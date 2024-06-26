//
//  Copyright 2023 Picovoice Inc.
//  You may not use this file except in compliance with the license. A copy of the license is located in the "LICENSE"
//  file accompanying this source.
//  Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on
//  an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the
//  specific language governing permissions and limitations under the License.
//

import Foundation

public class VoiceProcessorError: LocalizedError {
    private let message: String

    public init (_ message: String) {
        self.message = message
    }

    public var errorDescription: String {
        message
    }

    public var name: String {
        String(describing: type(of: self))
    }
}

public class VoiceProcessorArgumentError: VoiceProcessorError {}

public class VoiceProcessorReadError: VoiceProcessorError {}

public class VoiceProcessorRuntimeError: VoiceProcessorError {}
