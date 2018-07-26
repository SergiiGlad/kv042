Name:           practice1
Version:	1        
Release:        1%{?dist}
Summary:        Example
License:        BSD
URL:		http://softserveinc.com            	       
BuildArch:	noarch
  
Requires:	postgresql postgresql-server postgresql-libs postgresql-contrib postgresql-devel httpd php



%description	
%{name} - Practice 1

%prep


%build


%install

%post
postgresql-setup initdb
systemctl enable postgresql.service
systemctl start postgresql.service



%files
%doc


%changelog
* Thu Jul 26 2018 glad
- first rpm
