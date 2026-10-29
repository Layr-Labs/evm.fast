import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function848
import InitECandidate.Proofs.BackendStages.Function849
import InitECandidate.Proofs.BackendStages.Function850
import InitECandidate.Proofs.BackendStages.Function851
import InitECandidate.Proofs.BackendStages.Function852
import InitECandidate.Proofs.BackendStages.Function853
import InitECandidate.Proofs.BackendStages.Function854
import InitECandidate.Proofs.BackendStages.Function855
import InitECandidate.Proofs.BackendStages.Function856
import InitECandidate.Proofs.BackendStages.Function857
import InitECandidate.Proofs.BackendStages.Function858
import InitECandidate.Proofs.BackendStages.Function859
import InitECandidate.Proofs.BackendStages.Function860
import InitECandidate.Proofs.BackendStages.Function861
import InitECandidate.Proofs.BackendStages.Function862
import InitECandidate.Proofs.BackendStages.Function863
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk848_863
def programs864 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies864 : List (Nat × StackLang.HolProg 64) := []
def frames864 : List Nat := []
def after864 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled864_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs864 (bitmapPrefix, 4519) = (bodies864, frames864, after864 bitmapPrefix, 4519) := by rfl
def step863 (bitmapPrefix : AppList (BitVec 64)) := (function863 bitmapPrefix).2.2.1
def programs863 := (863, StackAnalysis.optimized863.2.1, StackAnalysis.optimized863.2.2) :: programs864
def bodies863 := (863, stackBody863_7361) :: bodies864
def frames863 := 92 :: frames864
def after863 (bitmapPrefix : AppList (BitVec 64)) := after864 (step863 bitmapPrefix)
theorem compiled863_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs863 (bitmapPrefix, 4401) = (bodies863, frames863, after863 bitmapPrefix, 4519) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 863 StackAnalysis.optimized863.2.1 StackAnalysis.optimized863.2.2 programs864 (bitmapPrefix, 4401) (step863 bitmapPrefix, 4519) (after864 (step863 bitmapPrefix), 4519) stackBody863_7361 92 bodies864 frames864 (function863_eq bitmapPrefix) (compiled864_eq (step863 bitmapPrefix))
def step862 (bitmapPrefix : AppList (BitVec 64)) := (function862 bitmapPrefix).2.2.1
def programs862 := (862, StackAnalysis.optimized862.2.1, StackAnalysis.optimized862.2.2) :: programs863
def bodies862 := (862, stackBody862_2743) :: bodies863
def frames862 := 29 :: frames863
def after862 (bitmapPrefix : AppList (BitVec 64)) := after863 (step862 bitmapPrefix)
theorem compiled862_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs862 (bitmapPrefix, 4381) = (bodies862, frames862, after862 bitmapPrefix, 4519) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 862 StackAnalysis.optimized862.2.1 StackAnalysis.optimized862.2.2 programs863 (bitmapPrefix, 4381) (step862 bitmapPrefix, 4401) (after863 (step862 bitmapPrefix), 4519) stackBody862_2743 29 bodies863 frames863 (function862_eq bitmapPrefix) (compiled863_eq (step862 bitmapPrefix))
def step861 (bitmapPrefix : AppList (BitVec 64)) := (function861 bitmapPrefix).2.2.1
def programs861 := (861, StackAnalysis.optimized861.2.1, StackAnalysis.optimized861.2.2) :: programs862
def bodies861 := (861, stackBody861_262) :: bodies862
def frames861 := 3 :: frames862
def after861 (bitmapPrefix : AppList (BitVec 64)) := after862 (step861 bitmapPrefix)
theorem compiled861_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs861 (bitmapPrefix, 4377) = (bodies861, frames861, after861 bitmapPrefix, 4519) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 861 StackAnalysis.optimized861.2.1 StackAnalysis.optimized861.2.2 programs862 (bitmapPrefix, 4377) (step861 bitmapPrefix, 4381) (after862 (step861 bitmapPrefix), 4519) stackBody861_262 3 bodies862 frames862 (function861_eq bitmapPrefix) (compiled862_eq (step861 bitmapPrefix))
def step860 (bitmapPrefix : AppList (BitVec 64)) := (function860 bitmapPrefix).2.2.1
def programs860 := (860, StackAnalysis.optimized860.2.1, StackAnalysis.optimized860.2.2) :: programs861
def bodies860 := (860, stackBody860_916) :: bodies861
def frames860 := 8 :: frames861
def after860 (bitmapPrefix : AppList (BitVec 64)) := after861 (step860 bitmapPrefix)
theorem compiled860_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs860 (bitmapPrefix, 4365) = (bodies860, frames860, after860 bitmapPrefix, 4519) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 860 StackAnalysis.optimized860.2.1 StackAnalysis.optimized860.2.2 programs861 (bitmapPrefix, 4365) (step860 bitmapPrefix, 4377) (after861 (step860 bitmapPrefix), 4519) stackBody860_916 8 bodies861 frames861 (function860_eq bitmapPrefix) (compiled861_eq (step860 bitmapPrefix))
def step859 (bitmapPrefix : AppList (BitVec 64)) := (function859 bitmapPrefix).2.2.1
def programs859 := (859, StackAnalysis.optimized859.2.1, StackAnalysis.optimized859.2.2) :: programs860
def bodies859 := (859, stackBody859_114) :: bodies860
def frames859 := 3 :: frames860
def after859 (bitmapPrefix : AppList (BitVec 64)) := after860 (step859 bitmapPrefix)
theorem compiled859_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs859 (bitmapPrefix, 4363) = (bodies859, frames859, after859 bitmapPrefix, 4519) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 859 StackAnalysis.optimized859.2.1 StackAnalysis.optimized859.2.2 programs860 (bitmapPrefix, 4363) (step859 bitmapPrefix, 4365) (after860 (step859 bitmapPrefix), 4519) stackBody859_114 3 bodies860 frames860 (function859_eq bitmapPrefix) (compiled860_eq (step859 bitmapPrefix))
def step858 (bitmapPrefix : AppList (BitVec 64)) := (function858 bitmapPrefix).2.2.1
def programs858 := (858, StackAnalysis.optimized858.2.1, StackAnalysis.optimized858.2.2) :: programs859
def bodies858 := (858, stackBody858_584) :: bodies859
def frames858 := 14 :: frames859
def after858 (bitmapPrefix : AppList (BitVec 64)) := after859 (step858 bitmapPrefix)
theorem compiled858_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs858 (bitmapPrefix, 4360) = (bodies858, frames858, after858 bitmapPrefix, 4519) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 858 StackAnalysis.optimized858.2.1 StackAnalysis.optimized858.2.2 programs859 (bitmapPrefix, 4360) (step858 bitmapPrefix, 4363) (after859 (step858 bitmapPrefix), 4519) stackBody858_584 14 bodies859 frames859 (function858_eq bitmapPrefix) (compiled859_eq (step858 bitmapPrefix))
def step857 (bitmapPrefix : AppList (BitVec 64)) := (function857 bitmapPrefix).2.2.1
def programs857 := (857, StackAnalysis.optimized857.2.1, StackAnalysis.optimized857.2.2) :: programs858
def bodies857 := (857, stackBody857_104) :: bodies858
def frames857 := 2 :: frames858
def after857 (bitmapPrefix : AppList (BitVec 64)) := after858 (step857 bitmapPrefix)
theorem compiled857_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs857 (bitmapPrefix, 4359) = (bodies857, frames857, after857 bitmapPrefix, 4519) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 857 StackAnalysis.optimized857.2.1 StackAnalysis.optimized857.2.2 programs858 (bitmapPrefix, 4359) (step857 bitmapPrefix, 4360) (after858 (step857 bitmapPrefix), 4519) stackBody857_104 2 bodies858 frames858 (function857_eq bitmapPrefix) (compiled858_eq (step857 bitmapPrefix))
def step856 (bitmapPrefix : AppList (BitVec 64)) := (function856 bitmapPrefix).2.2.1
def programs856 := (856, StackAnalysis.optimized856.2.1, StackAnalysis.optimized856.2.2) :: programs857
def bodies856 := (856, stackBody856_26) :: bodies857
def frames856 := 0 :: frames857
def after856 (bitmapPrefix : AppList (BitVec 64)) := after857 (step856 bitmapPrefix)
theorem compiled856_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs856 (bitmapPrefix, 4359) = (bodies856, frames856, after856 bitmapPrefix, 4519) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 856 StackAnalysis.optimized856.2.1 StackAnalysis.optimized856.2.2 programs857 (bitmapPrefix, 4359) (step856 bitmapPrefix, 4359) (after857 (step856 bitmapPrefix), 4519) stackBody856_26 0 bodies857 frames857 (function856_eq bitmapPrefix) (compiled857_eq (step856 bitmapPrefix))
def step855 (bitmapPrefix : AppList (BitVec 64)) := (function855 bitmapPrefix).2.2.1
def programs855 := (855, StackAnalysis.optimized855.2.1, StackAnalysis.optimized855.2.2) :: programs856
def bodies855 := (855, stackBody855_26) :: bodies856
def frames855 := 0 :: frames856
def after855 (bitmapPrefix : AppList (BitVec 64)) := after856 (step855 bitmapPrefix)
theorem compiled855_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs855 (bitmapPrefix, 4359) = (bodies855, frames855, after855 bitmapPrefix, 4519) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 855 StackAnalysis.optimized855.2.1 StackAnalysis.optimized855.2.2 programs856 (bitmapPrefix, 4359) (step855 bitmapPrefix, 4359) (after856 (step855 bitmapPrefix), 4519) stackBody855_26 0 bodies856 frames856 (function855_eq bitmapPrefix) (compiled856_eq (step855 bitmapPrefix))
def step854 (bitmapPrefix : AppList (BitVec 64)) := (function854 bitmapPrefix).2.2.1
def programs854 := (854, StackAnalysis.optimized854.2.1, StackAnalysis.optimized854.2.2) :: programs855
def bodies854 := (854, stackBody854_2111) :: bodies855
def frames854 := 20 :: frames855
def after854 (bitmapPrefix : AppList (BitVec 64)) := after855 (step854 bitmapPrefix)
theorem compiled854_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs854 (bitmapPrefix, 4340) = (bodies854, frames854, after854 bitmapPrefix, 4519) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 854 StackAnalysis.optimized854.2.1 StackAnalysis.optimized854.2.2 programs855 (bitmapPrefix, 4340) (step854 bitmapPrefix, 4359) (after855 (step854 bitmapPrefix), 4519) stackBody854_2111 20 bodies855 frames855 (function854_eq bitmapPrefix) (compiled855_eq (step854 bitmapPrefix))
def step853 (bitmapPrefix : AppList (BitVec 64)) := (function853 bitmapPrefix).2.2.1
def programs853 := (853, StackAnalysis.optimized853.2.1, StackAnalysis.optimized853.2.2) :: programs854
def bodies853 := (853, stackBody853_832) :: bodies854
def frames853 := 15 :: frames854
def after853 (bitmapPrefix : AppList (BitVec 64)) := after854 (step853 bitmapPrefix)
theorem compiled853_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs853 (bitmapPrefix, 4332) = (bodies853, frames853, after853 bitmapPrefix, 4519) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 853 StackAnalysis.optimized853.2.1 StackAnalysis.optimized853.2.2 programs854 (bitmapPrefix, 4332) (step853 bitmapPrefix, 4340) (after854 (step853 bitmapPrefix), 4519) stackBody853_832 15 bodies854 frames854 (function853_eq bitmapPrefix) (compiled854_eq (step853 bitmapPrefix))
def step852 (bitmapPrefix : AppList (BitVec 64)) := (function852 bitmapPrefix).2.2.1
def programs852 := (852, StackAnalysis.optimized852.2.1, StackAnalysis.optimized852.2.2) :: programs853
def bodies852 := (852, stackBody852_1447) :: bodies853
def frames852 := 2 :: frames853
def after852 (bitmapPrefix : AppList (BitVec 64)) := after853 (step852 bitmapPrefix)
theorem compiled852_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs852 (bitmapPrefix, 4309) = (bodies852, frames852, after852 bitmapPrefix, 4519) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 852 StackAnalysis.optimized852.2.1 StackAnalysis.optimized852.2.2 programs853 (bitmapPrefix, 4309) (step852 bitmapPrefix, 4332) (after853 (step852 bitmapPrefix), 4519) stackBody852_1447 2 bodies853 frames853 (function852_eq bitmapPrefix) (compiled853_eq (step852 bitmapPrefix))
def step851 (bitmapPrefix : AppList (BitVec 64)) := (function851 bitmapPrefix).2.2.1
def programs851 := (851, StackAnalysis.optimized851.2.1, StackAnalysis.optimized851.2.2) :: programs852
def bodies851 := (851, stackBody851_174) :: bodies852
def frames851 := 5 :: frames852
def after851 (bitmapPrefix : AppList (BitVec 64)) := after852 (step851 bitmapPrefix)
theorem compiled851_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs851 (bitmapPrefix, 4306) = (bodies851, frames851, after851 bitmapPrefix, 4519) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 851 StackAnalysis.optimized851.2.1 StackAnalysis.optimized851.2.2 programs852 (bitmapPrefix, 4306) (step851 bitmapPrefix, 4309) (after852 (step851 bitmapPrefix), 4519) stackBody851_174 5 bodies852 frames852 (function851_eq bitmapPrefix) (compiled852_eq (step851 bitmapPrefix))
def step850 (bitmapPrefix : AppList (BitVec 64)) := (function850 bitmapPrefix).2.2.1
def programs850 := (850, StackAnalysis.optimized850.2.1, StackAnalysis.optimized850.2.2) :: programs851
def bodies850 := (850, stackBody850_3919) :: bodies851
def frames850 := 27 :: frames851
def after850 (bitmapPrefix : AppList (BitVec 64)) := after851 (step850 bitmapPrefix)
theorem compiled850_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs850 (bitmapPrefix, 4270) = (bodies850, frames850, after850 bitmapPrefix, 4519) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 850 StackAnalysis.optimized850.2.1 StackAnalysis.optimized850.2.2 programs851 (bitmapPrefix, 4270) (step850 bitmapPrefix, 4306) (after851 (step850 bitmapPrefix), 4519) stackBody850_3919 27 bodies851 frames851 (function850_eq bitmapPrefix) (compiled851_eq (step850 bitmapPrefix))
def step849 (bitmapPrefix : AppList (BitVec 64)) := (function849 bitmapPrefix).2.2.1
def programs849 := (849, StackAnalysis.optimized849.2.1, StackAnalysis.optimized849.2.2) :: programs850
def bodies849 := (849, stackBody849_140) :: bodies850
def frames849 := 3 :: frames850
def after849 (bitmapPrefix : AppList (BitVec 64)) := after850 (step849 bitmapPrefix)
theorem compiled849_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs849 (bitmapPrefix, 4268) = (bodies849, frames849, after849 bitmapPrefix, 4519) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 849 StackAnalysis.optimized849.2.1 StackAnalysis.optimized849.2.2 programs850 (bitmapPrefix, 4268) (step849 bitmapPrefix, 4270) (after850 (step849 bitmapPrefix), 4519) stackBody849_140 3 bodies850 frames850 (function849_eq bitmapPrefix) (compiled850_eq (step849 bitmapPrefix))
def step848 (bitmapPrefix : AppList (BitVec 64)) := (function848 bitmapPrefix).2.2.1
def programs848 := (848, StackAnalysis.optimized848.2.1, StackAnalysis.optimized848.2.2) :: programs849
def bodies848 := (848, stackBody848_2176) :: bodies849
def frames848 := 7 :: frames849
def after848 (bitmapPrefix : AppList (BitVec 64)) := after849 (step848 bitmapPrefix)
theorem compiled848_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs848 (bitmapPrefix, 4240) = (bodies848, frames848, after848 bitmapPrefix, 4519) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 848 StackAnalysis.optimized848.2.1 StackAnalysis.optimized848.2.2 programs849 (bitmapPrefix, 4240) (step848 bitmapPrefix, 4268) (after849 (step848 bitmapPrefix), 4519) stackBody848_2176 7 bodies849 frames849 (function848_eq bitmapPrefix) (compiled849_eq (step848 bitmapPrefix))
def programs := programs848
def bodies := bodies848
def frames := frames848
def after := after848
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 4519)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 4240) = result bitmapPrefix := compiled848_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk848_863
