//
//  ZKMultiObjects.m
//  zkSforceTests
//
//  Created by Денис Марадудин on 20.04.2023.
//

#import "ZKMultiObjects.h"
#import "zkEnvelope.h"
#import "ZKXmlDeserializer.h"
#import "zkParser.h"

@implementation ZKMultiObjects

@synthesize id, code, namespace;

-(id)init {
    self = [super init];
    return self;
}

-(id)initWithZKXmlDeserializer:(ZKXmlDeserializer *)d {
    self = [super init];
    self.id = [d string:@"id"];
    self.code = [d string:@"code"];
    self.namespace = [d string:@"namespace"];
    return self;
}

-(id)initWithXmlElement:(zkElement *)e {
    ZKXmlDeserializer *d = [[[ZKXmlDeserializer alloc] initWithXmlElement:e] autorelease];
    return [self initWithZKXmlDeserializer:d];
}

-(void)dealloc {
    [super dealloc];
}

-(void)serializeToEnvelope:(ZKEnvelope *)env elemName:(NSString *)elemName {
    [env startElement:elemName];
    [env addElementString:@"id" elemValue:self.id];
    [env addElementString:@"code" elemValue:self.code];
    [env addElementString:@"namespace" elemValue:self.namespace];
    [env endElement:elemName];
}

@end
