# ASXTableViewController
An OS X control library written in Objective-C which enables easy to use NSTableView in Mac applications.

After preparing NSViewController with a NSTableView component in 
xib file or storyboard be sure to connect IBOutlets with controller.

Controller has two main methods which are adding and deleting rows from tableview.
These methods works with ASXCellObject. After initiating cell object with parameters
add and delete methods works properly.

# Example Usage

For now library supports 2 columns in each row.

Sample Add operation

	- (IBAction)addButtonClicked:(id)sender {
    if([self.nameTextField stringValue].length > 0 && [self.valueTextField stringValue].length > 0) {
        ASXCellObject *cellObject = [[ASXCellObject alloc] initWithName:[self.nameTextField stringValue] value:[self.valueTextField stringValue]];
        [self.tableViewController addRow:cellObject];
        
        [self.nameTextField setStringValue:@""];
        [self.valueTextField setStringValue:@""];
    }
}

Sample Delete operation

	- (IBAction)removeButtonClicked:(id)sender {
    	[self.tableViewController deleteRow:[self.tableView selectedRow]];
	}
	
# The MIT License (MIT)

Copyright (c) 2015 Abdullah Selek

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

	
