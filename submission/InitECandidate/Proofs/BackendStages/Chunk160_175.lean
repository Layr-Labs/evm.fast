import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function160
import InitECandidate.Proofs.BackendStages.Function161
import InitECandidate.Proofs.BackendStages.Function162
import InitECandidate.Proofs.BackendStages.Function163
import InitECandidate.Proofs.BackendStages.Function164
import InitECandidate.Proofs.BackendStages.Function165
import InitECandidate.Proofs.BackendStages.Function166
import InitECandidate.Proofs.BackendStages.Function167
import InitECandidate.Proofs.BackendStages.Function168
import InitECandidate.Proofs.BackendStages.Function169
import InitECandidate.Proofs.BackendStages.Function170
import InitECandidate.Proofs.BackendStages.Function171
import InitECandidate.Proofs.BackendStages.Function172
import InitECandidate.Proofs.BackendStages.Function173
import InitECandidate.Proofs.BackendStages.Function174
import InitECandidate.Proofs.BackendStages.Function175
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk160_175
def programs176 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies176 : List (Nat × StackLang.HolProg 64) := []
def frames176 : List Nat := []
def after176 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled176_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs176 (bitmapPrefix, 196) = (bodies176, frames176, after176 bitmapPrefix, 196) := by rfl
def step175 (bitmapPrefix : AppList (BitVec 64)) := (function175 bitmapPrefix).2.2.1
def programs175 := (175, StackAnalysis.optimized175.2.1, StackAnalysis.optimized175.2.2) :: programs176
def bodies175 := (175, stackBody175_84) :: bodies176
def frames175 := 2 :: frames176
def after175 (bitmapPrefix : AppList (BitVec 64)) := after176 (step175 bitmapPrefix)
theorem compiled175_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs175 (bitmapPrefix, 195) = (bodies175, frames175, after175 bitmapPrefix, 196) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 175 StackAnalysis.optimized175.2.1 StackAnalysis.optimized175.2.2 programs176 (bitmapPrefix, 195) (step175 bitmapPrefix, 196) (after176 (step175 bitmapPrefix), 196) stackBody175_84 2 bodies176 frames176 (function175_eq bitmapPrefix) (compiled176_eq (step175 bitmapPrefix))
def step174 (bitmapPrefix : AppList (BitVec 64)) := (function174 bitmapPrefix).2.2.1
def programs174 := (174, StackAnalysis.optimized174.2.1, StackAnalysis.optimized174.2.2) :: programs175
def bodies174 := (174, stackBody174_168) :: bodies175
def frames174 := 5 :: frames175
def after174 (bitmapPrefix : AppList (BitVec 64)) := after175 (step174 bitmapPrefix)
theorem compiled174_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs174 (bitmapPrefix, 193) = (bodies174, frames174, after174 bitmapPrefix, 196) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 174 StackAnalysis.optimized174.2.1 StackAnalysis.optimized174.2.2 programs175 (bitmapPrefix, 193) (step174 bitmapPrefix, 195) (after175 (step174 bitmapPrefix), 196) stackBody174_168 5 bodies175 frames175 (function174_eq bitmapPrefix) (compiled175_eq (step174 bitmapPrefix))
def step173 (bitmapPrefix : AppList (BitVec 64)) := (function173 bitmapPrefix).2.2.1
def programs173 := (173, StackAnalysis.optimized173.2.1, StackAnalysis.optimized173.2.2) :: programs174
def bodies173 := (173, stackBody173_49) :: bodies174
def frames173 := 0 :: frames174
def after173 (bitmapPrefix : AppList (BitVec 64)) := after174 (step173 bitmapPrefix)
theorem compiled173_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs173 (bitmapPrefix, 193) = (bodies173, frames173, after173 bitmapPrefix, 196) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 173 StackAnalysis.optimized173.2.1 StackAnalysis.optimized173.2.2 programs174 (bitmapPrefix, 193) (step173 bitmapPrefix, 193) (after174 (step173 bitmapPrefix), 196) stackBody173_49 0 bodies174 frames174 (function173_eq bitmapPrefix) (compiled174_eq (step173 bitmapPrefix))
def step172 (bitmapPrefix : AppList (BitVec 64)) := (function172 bitmapPrefix).2.2.1
def programs172 := (172, StackAnalysis.optimized172.2.1, StackAnalysis.optimized172.2.2) :: programs173
def bodies172 := (172, stackBody172_41) :: bodies173
def frames172 := 0 :: frames173
def after172 (bitmapPrefix : AppList (BitVec 64)) := after173 (step172 bitmapPrefix)
theorem compiled172_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs172 (bitmapPrefix, 193) = (bodies172, frames172, after172 bitmapPrefix, 196) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 172 StackAnalysis.optimized172.2.1 StackAnalysis.optimized172.2.2 programs173 (bitmapPrefix, 193) (step172 bitmapPrefix, 193) (after173 (step172 bitmapPrefix), 196) stackBody172_41 0 bodies173 frames173 (function172_eq bitmapPrefix) (compiled173_eq (step172 bitmapPrefix))
def step171 (bitmapPrefix : AppList (BitVec 64)) := (function171 bitmapPrefix).2.2.1
def programs171 := (171, StackAnalysis.optimized171.2.1, StackAnalysis.optimized171.2.2) :: programs172
def bodies171 := (171, stackBody171_212) :: bodies172
def frames171 := 4 :: frames172
def after171 (bitmapPrefix : AppList (BitVec 64)) := after172 (step171 bitmapPrefix)
theorem compiled171_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs171 (bitmapPrefix, 191) = (bodies171, frames171, after171 bitmapPrefix, 196) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 171 StackAnalysis.optimized171.2.1 StackAnalysis.optimized171.2.2 programs172 (bitmapPrefix, 191) (step171 bitmapPrefix, 193) (after172 (step171 bitmapPrefix), 196) stackBody171_212 4 bodies172 frames172 (function171_eq bitmapPrefix) (compiled172_eq (step171 bitmapPrefix))
def step170 (bitmapPrefix : AppList (BitVec 64)) := (function170 bitmapPrefix).2.2.1
def programs170 := (170, StackAnalysis.optimized170.2.1, StackAnalysis.optimized170.2.2) :: programs171
def bodies170 := (170, stackBody170_233) :: bodies171
def frames170 := 4 :: frames171
def after170 (bitmapPrefix : AppList (BitVec 64)) := after171 (step170 bitmapPrefix)
theorem compiled170_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs170 (bitmapPrefix, 189) = (bodies170, frames170, after170 bitmapPrefix, 196) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 170 StackAnalysis.optimized170.2.1 StackAnalysis.optimized170.2.2 programs171 (bitmapPrefix, 189) (step170 bitmapPrefix, 191) (after171 (step170 bitmapPrefix), 196) stackBody170_233 4 bodies171 frames171 (function170_eq bitmapPrefix) (compiled171_eq (step170 bitmapPrefix))
def step169 (bitmapPrefix : AppList (BitVec 64)) := (function169 bitmapPrefix).2.2.1
def programs169 := (169, StackAnalysis.optimized169.2.1, StackAnalysis.optimized169.2.2) :: programs170
def bodies169 := (169, stackBody169_279) :: bodies170
def frames169 := 8 :: frames170
def after169 (bitmapPrefix : AppList (BitVec 64)) := after170 (step169 bitmapPrefix)
theorem compiled169_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs169 (bitmapPrefix, 186) = (bodies169, frames169, after169 bitmapPrefix, 196) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 169 StackAnalysis.optimized169.2.1 StackAnalysis.optimized169.2.2 programs170 (bitmapPrefix, 186) (step169 bitmapPrefix, 189) (after170 (step169 bitmapPrefix), 196) stackBody169_279 8 bodies170 frames170 (function169_eq bitmapPrefix) (compiled170_eq (step169 bitmapPrefix))
def step168 (bitmapPrefix : AppList (BitVec 64)) := (function168 bitmapPrefix).2.2.1
def programs168 := (168, StackAnalysis.optimized168.2.1, StackAnalysis.optimized168.2.2) :: programs169
def bodies168 := (168, stackBody168_236) :: bodies169
def frames168 := 3 :: frames169
def after168 (bitmapPrefix : AppList (BitVec 64)) := after169 (step168 bitmapPrefix)
theorem compiled168_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs168 (bitmapPrefix, 184) = (bodies168, frames168, after168 bitmapPrefix, 196) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 168 StackAnalysis.optimized168.2.1 StackAnalysis.optimized168.2.2 programs169 (bitmapPrefix, 184) (step168 bitmapPrefix, 186) (after169 (step168 bitmapPrefix), 196) stackBody168_236 3 bodies169 frames169 (function168_eq bitmapPrefix) (compiled169_eq (step168 bitmapPrefix))
def step167 (bitmapPrefix : AppList (BitVec 64)) := (function167 bitmapPrefix).2.2.1
def programs167 := (167, StackAnalysis.optimized167.2.1, StackAnalysis.optimized167.2.2) :: programs168
def bodies167 := (167, stackBody167_137) :: bodies168
def frames167 := 6 :: frames168
def after167 (bitmapPrefix : AppList (BitVec 64)) := after168 (step167 bitmapPrefix)
theorem compiled167_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs167 (bitmapPrefix, 183) = (bodies167, frames167, after167 bitmapPrefix, 196) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 167 StackAnalysis.optimized167.2.1 StackAnalysis.optimized167.2.2 programs168 (bitmapPrefix, 183) (step167 bitmapPrefix, 184) (after168 (step167 bitmapPrefix), 196) stackBody167_137 6 bodies168 frames168 (function167_eq bitmapPrefix) (compiled168_eq (step167 bitmapPrefix))
def step166 (bitmapPrefix : AppList (BitVec 64)) := (function166 bitmapPrefix).2.2.1
def programs166 := (166, StackAnalysis.optimized166.2.1, StackAnalysis.optimized166.2.2) :: programs167
def bodies166 := (166, stackBody166_138) :: bodies167
def frames166 := 4 :: frames167
def after166 (bitmapPrefix : AppList (BitVec 64)) := after167 (step166 bitmapPrefix)
theorem compiled166_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs166 (bitmapPrefix, 181) = (bodies166, frames166, after166 bitmapPrefix, 196) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 166 StackAnalysis.optimized166.2.1 StackAnalysis.optimized166.2.2 programs167 (bitmapPrefix, 181) (step166 bitmapPrefix, 183) (after167 (step166 bitmapPrefix), 196) stackBody166_138 4 bodies167 frames167 (function166_eq bitmapPrefix) (compiled167_eq (step166 bitmapPrefix))
def step165 (bitmapPrefix : AppList (BitVec 64)) := (function165 bitmapPrefix).2.2.1
def programs165 := (165, StackAnalysis.optimized165.2.1, StackAnalysis.optimized165.2.2) :: programs166
def bodies165 := (165, stackBody165_238) :: bodies166
def frames165 := 4 :: frames166
def after165 (bitmapPrefix : AppList (BitVec 64)) := after166 (step165 bitmapPrefix)
theorem compiled165_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs165 (bitmapPrefix, 177) = (bodies165, frames165, after165 bitmapPrefix, 196) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 165 StackAnalysis.optimized165.2.1 StackAnalysis.optimized165.2.2 programs166 (bitmapPrefix, 177) (step165 bitmapPrefix, 181) (after166 (step165 bitmapPrefix), 196) stackBody165_238 4 bodies166 frames166 (function165_eq bitmapPrefix) (compiled166_eq (step165 bitmapPrefix))
def step164 (bitmapPrefix : AppList (BitVec 64)) := (function164 bitmapPrefix).2.2.1
def programs164 := (164, StackAnalysis.optimized164.2.1, StackAnalysis.optimized164.2.2) :: programs165
def bodies164 := (164, stackBody164_335) :: bodies165
def frames164 := 9 :: frames165
def after164 (bitmapPrefix : AppList (BitVec 64)) := after165 (step164 bitmapPrefix)
theorem compiled164_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs164 (bitmapPrefix, 175) = (bodies164, frames164, after164 bitmapPrefix, 196) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 164 StackAnalysis.optimized164.2.1 StackAnalysis.optimized164.2.2 programs165 (bitmapPrefix, 175) (step164 bitmapPrefix, 177) (after165 (step164 bitmapPrefix), 196) stackBody164_335 9 bodies165 frames165 (function164_eq bitmapPrefix) (compiled165_eq (step164 bitmapPrefix))
def step163 (bitmapPrefix : AppList (BitVec 64)) := (function163 bitmapPrefix).2.2.1
def programs163 := (163, StackAnalysis.optimized163.2.1, StackAnalysis.optimized163.2.2) :: programs164
def bodies163 := (163, stackBody163_1030) :: bodies164
def frames163 := 9 :: frames164
def after163 (bitmapPrefix : AppList (BitVec 64)) := after164 (step163 bitmapPrefix)
theorem compiled163_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs163 (bitmapPrefix, 163) = (bodies163, frames163, after163 bitmapPrefix, 196) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 163 StackAnalysis.optimized163.2.1 StackAnalysis.optimized163.2.2 programs164 (bitmapPrefix, 163) (step163 bitmapPrefix, 175) (after164 (step163 bitmapPrefix), 196) stackBody163_1030 9 bodies164 frames164 (function163_eq bitmapPrefix) (compiled164_eq (step163 bitmapPrefix))
def step162 (bitmapPrefix : AppList (BitVec 64)) := (function162 bitmapPrefix).2.2.1
def programs162 := (162, StackAnalysis.optimized162.2.1, StackAnalysis.optimized162.2.2) :: programs163
def bodies162 := (162, stackBody162_142) :: bodies163
def frames162 := 6 :: frames163
def after162 (bitmapPrefix : AppList (BitVec 64)) := after163 (step162 bitmapPrefix)
theorem compiled162_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs162 (bitmapPrefix, 161) = (bodies162, frames162, after162 bitmapPrefix, 196) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 162 StackAnalysis.optimized162.2.1 StackAnalysis.optimized162.2.2 programs163 (bitmapPrefix, 161) (step162 bitmapPrefix, 163) (after163 (step162 bitmapPrefix), 196) stackBody162_142 6 bodies163 frames163 (function162_eq bitmapPrefix) (compiled163_eq (step162 bitmapPrefix))
def step161 (bitmapPrefix : AppList (BitVec 64)) := (function161 bitmapPrefix).2.2.1
def programs161 := (161, StackAnalysis.optimized161.2.1, StackAnalysis.optimized161.2.2) :: programs162
def bodies161 := (161, stackBody161_1228) :: bodies162
def frames161 := 8 :: frames162
def after161 (bitmapPrefix : AppList (BitVec 64)) := after162 (step161 bitmapPrefix)
theorem compiled161_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs161 (bitmapPrefix, 147) = (bodies161, frames161, after161 bitmapPrefix, 196) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 161 StackAnalysis.optimized161.2.1 StackAnalysis.optimized161.2.2 programs162 (bitmapPrefix, 147) (step161 bitmapPrefix, 161) (after162 (step161 bitmapPrefix), 196) stackBody161_1228 8 bodies162 frames162 (function161_eq bitmapPrefix) (compiled162_eq (step161 bitmapPrefix))
def step160 (bitmapPrefix : AppList (BitVec 64)) := (function160 bitmapPrefix).2.2.1
def programs160 := (160, StackAnalysis.optimized160.2.1, StackAnalysis.optimized160.2.2) :: programs161
def bodies160 := (160, stackBody160_163) :: bodies161
def frames160 := 4 :: frames161
def after160 (bitmapPrefix : AppList (BitVec 64)) := after161 (step160 bitmapPrefix)
theorem compiled160_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs160 (bitmapPrefix, 146) = (bodies160, frames160, after160 bitmapPrefix, 196) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 160 StackAnalysis.optimized160.2.1 StackAnalysis.optimized160.2.2 programs161 (bitmapPrefix, 146) (step160 bitmapPrefix, 147) (after161 (step160 bitmapPrefix), 196) stackBody160_163 4 bodies161 frames161 (function160_eq bitmapPrefix) (compiled161_eq (step160 bitmapPrefix))
def programs := programs160
def bodies := bodies160
def frames := frames160
def after := after160
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 196)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 146) = result bitmapPrefix := compiled160_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk160_175
