use inc::Module::Install;

name 'App-TemplateServer-Provider-HTML-Template';
all_from 'lib/App/TemplateServer/Provider/HTML/Template.pm';

build_requires 'Test::More';
build_requires 'ok';

WriteAll();
