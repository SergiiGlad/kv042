Name:           practice3
Version:	1.0        
Release:        1%{?dist}
Summary:        Example
License:        BSD
URL:		http://softserveinc.com            	       
Source0:	s.tar.gz
BuildArch:	noarch

  
%description	
%{name} - Practice3


%setup -q

%build

%install
install -m 0777 -d /home/$LOGNAME/%{name}/text-package
install -m 0777 * /home/$LOGNAME/%{name}/text-package/

%post


%files
%dir 

%doc


%changelog
* Thu Jul 31 2018 glad
- buils source metapackage
- add txt doc files
