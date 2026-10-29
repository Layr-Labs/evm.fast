import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function176
import InitECandidate.Proofs.BackendStages.Function177
import InitECandidate.Proofs.BackendStages.Function178
import InitECandidate.Proofs.BackendStages.Function179
import InitECandidate.Proofs.BackendStages.Function180
import InitECandidate.Proofs.BackendStages.Function181
import InitECandidate.Proofs.BackendStages.Function182
import InitECandidate.Proofs.BackendStages.Function183
import InitECandidate.Proofs.BackendStages.Function184
import InitECandidate.Proofs.BackendStages.Function185
import InitECandidate.Proofs.BackendStages.Function186
import InitECandidate.Proofs.BackendStages.Function187
import InitECandidate.Proofs.BackendStages.Function188
import InitECandidate.Proofs.BackendStages.Function189
import InitECandidate.Proofs.BackendStages.Function190
import InitECandidate.Proofs.BackendStages.Function191
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk176_191
def programs192 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies192 : List (Nat × StackLang.HolProg 64) := []
def frames192 : List Nat := []
def after192 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled192_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs192 (bitmapPrefix, 224) = (bodies192, frames192, after192 bitmapPrefix, 224) := by rfl
def step191 (bitmapPrefix : AppList (BitVec 64)) := (function191 bitmapPrefix).2.2.1
def programs191 := (191, StackAnalysis.optimized191.2.1, StackAnalysis.optimized191.2.2) :: programs192
def bodies191 := (191, stackBody191_488) :: bodies192
def frames191 := 6 :: frames192
def after191 (bitmapPrefix : AppList (BitVec 64)) := after192 (step191 bitmapPrefix)
theorem compiled191_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs191 (bitmapPrefix, 218) = (bodies191, frames191, after191 bitmapPrefix, 224) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 191 StackAnalysis.optimized191.2.1 StackAnalysis.optimized191.2.2 programs192 (bitmapPrefix, 218) (step191 bitmapPrefix, 224) (after192 (step191 bitmapPrefix), 224) stackBody191_488 6 bodies192 frames192 (function191_eq bitmapPrefix) (compiled192_eq (step191 bitmapPrefix))
def step190 (bitmapPrefix : AppList (BitVec 64)) := (function190 bitmapPrefix).2.2.1
def programs190 := (190, StackAnalysis.optimized190.2.1, StackAnalysis.optimized190.2.2) :: programs191
def bodies190 := (190, stackBody190_114) :: bodies191
def frames190 := 4 :: frames191
def after190 (bitmapPrefix : AppList (BitVec 64)) := after191 (step190 bitmapPrefix)
theorem compiled190_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs190 (bitmapPrefix, 217) = (bodies190, frames190, after190 bitmapPrefix, 224) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 190 StackAnalysis.optimized190.2.1 StackAnalysis.optimized190.2.2 programs191 (bitmapPrefix, 217) (step190 bitmapPrefix, 218) (after191 (step190 bitmapPrefix), 224) stackBody190_114 4 bodies191 frames191 (function190_eq bitmapPrefix) (compiled191_eq (step190 bitmapPrefix))
def step189 (bitmapPrefix : AppList (BitVec 64)) := (function189 bitmapPrefix).2.2.1
def programs189 := (189, StackAnalysis.optimized189.2.1, StackAnalysis.optimized189.2.2) :: programs190
def bodies189 := (189, stackBody189_230) :: bodies190
def frames189 := 6 :: frames190
def after189 (bitmapPrefix : AppList (BitVec 64)) := after190 (step189 bitmapPrefix)
theorem compiled189_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs189 (bitmapPrefix, 215) = (bodies189, frames189, after189 bitmapPrefix, 224) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 189 StackAnalysis.optimized189.2.1 StackAnalysis.optimized189.2.2 programs190 (bitmapPrefix, 215) (step189 bitmapPrefix, 217) (after190 (step189 bitmapPrefix), 224) stackBody189_230 6 bodies190 frames190 (function189_eq bitmapPrefix) (compiled190_eq (step189 bitmapPrefix))
def step188 (bitmapPrefix : AppList (BitVec 64)) := (function188 bitmapPrefix).2.2.1
def programs188 := (188, StackAnalysis.optimized188.2.1, StackAnalysis.optimized188.2.2) :: programs189
def bodies188 := (188, stackBody188_142) :: bodies189
def frames188 := 3 :: frames189
def after188 (bitmapPrefix : AppList (BitVec 64)) := after189 (step188 bitmapPrefix)
theorem compiled188_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs188 (bitmapPrefix, 214) = (bodies188, frames188, after188 bitmapPrefix, 224) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 188 StackAnalysis.optimized188.2.1 StackAnalysis.optimized188.2.2 programs189 (bitmapPrefix, 214) (step188 bitmapPrefix, 215) (after189 (step188 bitmapPrefix), 224) stackBody188_142 3 bodies189 frames189 (function188_eq bitmapPrefix) (compiled189_eq (step188 bitmapPrefix))
def step187 (bitmapPrefix : AppList (BitVec 64)) := (function187 bitmapPrefix).2.2.1
def programs187 := (187, StackAnalysis.optimized187.2.1, StackAnalysis.optimized187.2.2) :: programs188
def bodies187 := (187, stackBody187_162) :: bodies188
def frames187 := 4 :: frames188
def after187 (bitmapPrefix : AppList (BitVec 64)) := after188 (step187 bitmapPrefix)
theorem compiled187_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs187 (bitmapPrefix, 212) = (bodies187, frames187, after187 bitmapPrefix, 224) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 187 StackAnalysis.optimized187.2.1 StackAnalysis.optimized187.2.2 programs188 (bitmapPrefix, 212) (step187 bitmapPrefix, 214) (after188 (step187 bitmapPrefix), 224) stackBody187_162 4 bodies188 frames188 (function187_eq bitmapPrefix) (compiled188_eq (step187 bitmapPrefix))
def step186 (bitmapPrefix : AppList (BitVec 64)) := (function186 bitmapPrefix).2.2.1
def programs186 := (186, StackAnalysis.optimized186.2.1, StackAnalysis.optimized186.2.2) :: programs187
def bodies186 := (186, stackBody186_210) :: bodies187
def frames186 := 4 :: frames187
def after186 (bitmapPrefix : AppList (BitVec 64)) := after187 (step186 bitmapPrefix)
theorem compiled186_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs186 (bitmapPrefix, 210) = (bodies186, frames186, after186 bitmapPrefix, 224) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 186 StackAnalysis.optimized186.2.1 StackAnalysis.optimized186.2.2 programs187 (bitmapPrefix, 210) (step186 bitmapPrefix, 212) (after187 (step186 bitmapPrefix), 224) stackBody186_210 4 bodies187 frames187 (function186_eq bitmapPrefix) (compiled187_eq (step186 bitmapPrefix))
def step185 (bitmapPrefix : AppList (BitVec 64)) := (function185 bitmapPrefix).2.2.1
def programs185 := (185, StackAnalysis.optimized185.2.1, StackAnalysis.optimized185.2.2) :: programs186
def bodies185 := (185, stackBody185_125) :: bodies186
def frames185 := 0 :: frames186
def after185 (bitmapPrefix : AppList (BitVec 64)) := after186 (step185 bitmapPrefix)
theorem compiled185_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs185 (bitmapPrefix, 210) = (bodies185, frames185, after185 bitmapPrefix, 224) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 185 StackAnalysis.optimized185.2.1 StackAnalysis.optimized185.2.2 programs186 (bitmapPrefix, 210) (step185 bitmapPrefix, 210) (after186 (step185 bitmapPrefix), 224) stackBody185_125 0 bodies186 frames186 (function185_eq bitmapPrefix) (compiled186_eq (step185 bitmapPrefix))
def step184 (bitmapPrefix : AppList (BitVec 64)) := (function184 bitmapPrefix).2.2.1
def programs184 := (184, StackAnalysis.optimized184.2.1, StackAnalysis.optimized184.2.2) :: programs185
def bodies184 := (184, stackBody184_138) :: bodies185
def frames184 := 0 :: frames185
def after184 (bitmapPrefix : AppList (BitVec 64)) := after185 (step184 bitmapPrefix)
theorem compiled184_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs184 (bitmapPrefix, 210) = (bodies184, frames184, after184 bitmapPrefix, 224) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 184 StackAnalysis.optimized184.2.1 StackAnalysis.optimized184.2.2 programs185 (bitmapPrefix, 210) (step184 bitmapPrefix, 210) (after185 (step184 bitmapPrefix), 224) stackBody184_138 0 bodies185 frames185 (function184_eq bitmapPrefix) (compiled185_eq (step184 bitmapPrefix))
def step183 (bitmapPrefix : AppList (BitVec 64)) := (function183 bitmapPrefix).2.2.1
def programs183 := (183, StackAnalysis.optimized183.2.1, StackAnalysis.optimized183.2.2) :: programs184
def bodies183 := (183, stackBody183_376) :: bodies184
def frames183 := 4 :: frames184
def after183 (bitmapPrefix : AppList (BitVec 64)) := after184 (step183 bitmapPrefix)
theorem compiled183_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs183 (bitmapPrefix, 206) = (bodies183, frames183, after183 bitmapPrefix, 224) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 183 StackAnalysis.optimized183.2.1 StackAnalysis.optimized183.2.2 programs184 (bitmapPrefix, 206) (step183 bitmapPrefix, 210) (after184 (step183 bitmapPrefix), 224) stackBody183_376 4 bodies184 frames184 (function183_eq bitmapPrefix) (compiled184_eq (step183 bitmapPrefix))
def step182 (bitmapPrefix : AppList (BitVec 64)) := (function182 bitmapPrefix).2.2.1
def programs182 := (182, StackAnalysis.optimized182.2.1, StackAnalysis.optimized182.2.2) :: programs183
def bodies182 := (182, stackBody182_376) :: bodies183
def frames182 := 4 :: frames183
def after182 (bitmapPrefix : AppList (BitVec 64)) := after183 (step182 bitmapPrefix)
theorem compiled182_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs182 (bitmapPrefix, 202) = (bodies182, frames182, after182 bitmapPrefix, 224) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 182 StackAnalysis.optimized182.2.1 StackAnalysis.optimized182.2.2 programs183 (bitmapPrefix, 202) (step182 bitmapPrefix, 206) (after183 (step182 bitmapPrefix), 224) stackBody182_376 4 bodies183 frames183 (function182_eq bitmapPrefix) (compiled183_eq (step182 bitmapPrefix))
def step181 (bitmapPrefix : AppList (BitVec 64)) := (function181 bitmapPrefix).2.2.1
def programs181 := (181, StackAnalysis.optimized181.2.1, StackAnalysis.optimized181.2.2) :: programs182
def bodies181 := (181, stackBody181_82) :: bodies182
def frames181 := 2 :: frames182
def after181 (bitmapPrefix : AppList (BitVec 64)) := after182 (step181 bitmapPrefix)
theorem compiled181_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs181 (bitmapPrefix, 201) = (bodies181, frames181, after181 bitmapPrefix, 224) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 181 StackAnalysis.optimized181.2.1 StackAnalysis.optimized181.2.2 programs182 (bitmapPrefix, 201) (step181 bitmapPrefix, 202) (after182 (step181 bitmapPrefix), 224) stackBody181_82 2 bodies182 frames182 (function181_eq bitmapPrefix) (compiled182_eq (step181 bitmapPrefix))
def step180 (bitmapPrefix : AppList (BitVec 64)) := (function180 bitmapPrefix).2.2.1
def programs180 := (180, StackAnalysis.optimized180.2.1, StackAnalysis.optimized180.2.2) :: programs181
def bodies180 := (180, stackBody180_6) :: bodies181
def frames180 := 0 :: frames181
def after180 (bitmapPrefix : AppList (BitVec 64)) := after181 (step180 bitmapPrefix)
theorem compiled180_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs180 (bitmapPrefix, 201) = (bodies180, frames180, after180 bitmapPrefix, 224) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 180 StackAnalysis.optimized180.2.1 StackAnalysis.optimized180.2.2 programs181 (bitmapPrefix, 201) (step180 bitmapPrefix, 201) (after181 (step180 bitmapPrefix), 224) stackBody180_6 0 bodies181 frames181 (function180_eq bitmapPrefix) (compiled181_eq (step180 bitmapPrefix))
def step179 (bitmapPrefix : AppList (BitVec 64)) := (function179 bitmapPrefix).2.2.1
def programs179 := (179, StackAnalysis.optimized179.2.1, StackAnalysis.optimized179.2.2) :: programs180
def bodies179 := (179, stackBody179_120) :: bodies180
def frames179 := 3 :: frames180
def after179 (bitmapPrefix : AppList (BitVec 64)) := after180 (step179 bitmapPrefix)
theorem compiled179_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs179 (bitmapPrefix, 200) = (bodies179, frames179, after179 bitmapPrefix, 224) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 179 StackAnalysis.optimized179.2.1 StackAnalysis.optimized179.2.2 programs180 (bitmapPrefix, 200) (step179 bitmapPrefix, 201) (after180 (step179 bitmapPrefix), 224) stackBody179_120 3 bodies180 frames180 (function179_eq bitmapPrefix) (compiled180_eq (step179 bitmapPrefix))
def step178 (bitmapPrefix : AppList (BitVec 64)) := (function178 bitmapPrefix).2.2.1
def programs178 := (178, StackAnalysis.optimized178.2.1, StackAnalysis.optimized178.2.2) :: programs179
def bodies178 := (178, stackBody178_10) :: bodies179
def frames178 := 0 :: frames179
def after178 (bitmapPrefix : AppList (BitVec 64)) := after179 (step178 bitmapPrefix)
theorem compiled178_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs178 (bitmapPrefix, 200) = (bodies178, frames178, after178 bitmapPrefix, 224) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 178 StackAnalysis.optimized178.2.1 StackAnalysis.optimized178.2.2 programs179 (bitmapPrefix, 200) (step178 bitmapPrefix, 200) (after179 (step178 bitmapPrefix), 224) stackBody178_10 0 bodies179 frames179 (function178_eq bitmapPrefix) (compiled179_eq (step178 bitmapPrefix))
def step177 (bitmapPrefix : AppList (BitVec 64)) := (function177 bitmapPrefix).2.2.1
def programs177 := (177, StackAnalysis.optimized177.2.1, StackAnalysis.optimized177.2.2) :: programs178
def bodies177 := (177, stackBody177_184) :: bodies178
def frames177 := 4 :: frames178
def after177 (bitmapPrefix : AppList (BitVec 64)) := after178 (step177 bitmapPrefix)
theorem compiled177_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs177 (bitmapPrefix, 198) = (bodies177, frames177, after177 bitmapPrefix, 224) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 177 StackAnalysis.optimized177.2.1 StackAnalysis.optimized177.2.2 programs178 (bitmapPrefix, 198) (step177 bitmapPrefix, 200) (after178 (step177 bitmapPrefix), 224) stackBody177_184 4 bodies178 frames178 (function177_eq bitmapPrefix) (compiled178_eq (step177 bitmapPrefix))
def step176 (bitmapPrefix : AppList (BitVec 64)) := (function176 bitmapPrefix).2.2.1
def programs176 := (176, StackAnalysis.optimized176.2.1, StackAnalysis.optimized176.2.2) :: programs177
def bodies176 := (176, stackBody176_182) :: bodies177
def frames176 := 5 :: frames177
def after176 (bitmapPrefix : AppList (BitVec 64)) := after177 (step176 bitmapPrefix)
theorem compiled176_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs176 (bitmapPrefix, 196) = (bodies176, frames176, after176 bitmapPrefix, 224) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 176 StackAnalysis.optimized176.2.1 StackAnalysis.optimized176.2.2 programs177 (bitmapPrefix, 196) (step176 bitmapPrefix, 198) (after177 (step176 bitmapPrefix), 224) stackBody176_182 5 bodies177 frames177 (function176_eq bitmapPrefix) (compiled177_eq (step176 bitmapPrefix))
def programs := programs176
def bodies := bodies176
def frames := frames176
def after := after176
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 224)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 196) = result bitmapPrefix := compiled176_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk176_191
