package App::TemplateServer::Provider::HTML::Template;
use Moose;
use HTML::Template;
use Method::Signatures;

our $VERSION = '0.01';

with 'App::TemplateServer::Provider::Filesystem';

method render_template($template_file, $context){
    my $template = HTML::Template->new(
        path     => scalar $self->docroot,
        filename => $template_file,
    );
    
    my %data = %{$context->data||{}};
    for my $var (keys %data){
        my $value = $data{$var};
        $template->param($var => $value);
    }
    
    return $template->output;
};

1;

__END__
