.PHONY: clean
all:
	git clone --depth 1 https://github.com/ComplianceAsCode/content
	(cd content; ./build_product --debug ocp4)
	cp ./content/build/ssg-ocp4-ds.xml ./content/build/guides/ssg-ocp4-guide-coreos-ncp.html ./
	rm -rf content/

clean:
	rm -rf content/
