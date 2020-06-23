.PHONY: clean
all:
	git clone --depth 1 https://github.com/ComplianceAsCode/content
	(cd content; ./build_product --debug rhcos4)
	cp ./content/build/ssg-rhcos4-ds.xml ./content/build/guides/ssg-rhcos4-guide-*.html ./
	rm -rf content/

clean:
	rm -rf content/
