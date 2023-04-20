//
//  ZKMultiObjects.h
//  zkSforceTests
//
//  Created by Денис Марадудин on 20.04.2023.
//

import "ZKXMLSerializable.h"

@class ZKXmlDeserializer;
@class zkElement;

@interface ZKMultiObjects : NSObject<ZKXMLSerializable> {
    NSString *id;
    NSString *code;
    NSString *namespace;
}
- (id)init;
- (id)initWithZKXmlDeserializer:(ZKXmlDeserializer *)d;
- (id)initWithXmlElement:(zkElement *)e;

@property (retain) NSString *id;
@property (retain) NSString *code;
@property (retain) NSString *namespace;

@end
