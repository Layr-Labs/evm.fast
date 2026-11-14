import InitECandidate.Solver.MemSafe.PairCost.ScaledAddr
import InitECandidate.Solver.Spec.CostInv
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.BlsSlotCost.Read
variable {σ : Type}
def isProjectedBase (i : MlS) : ExpHOL 64 → Bool
 | .const _ => true
 | .var .local x => decide (x ≠ i)
 | .rfield _ (.var .local x) => decide (x ≠ i)
 | _ => false
noncomputable def projectedBaseVal (s : PanSemStateFiniteExact 64 σ) (B : ExpHOL 64) : Option (BitVec 64) :=
 match ev s B with | some (.val (.word w)) => some w | _ => none
noncomputable def projectedAddr (B : ExpHOL 64) (i : MlS) (k : BitVec 64) (s : PanSemStateFiniteExact 64 σ) : Option (BitVec 64) :=
 match projectedBaseVal s B,wordLocal s i with
 | some b,some v => some (b+v*k)
 | _,_ => none
lemma projectedBase_clk {i : MlS} {B : ExpHOL 64} (h : isProjectedBase i B = true)
 (s : PanSemStateFiniteExact 64 σ) : projectedBaseVal (decClockHOLFinite s) B = projectedBaseVal s B := by
 unfold isProjectedBase at h
 split at h <;> first | rfl | contradiction
lemma projectedAddr_clk {i : MlS} {B : ExpHOL 64} {k : BitVec 64} (h : isProjectedBase i B = true)
 (s : PanSemStateFiniteExact 64 σ) : projectedAddr B i k (decClockHOLFinite s) = projectedAddr B i k s := by
 unfold projectedAddr
 rw [projectedBase_clk h s]
 rfl

def projectedBaseKeptB (B : ExpHOL 64) (b : ProgHOL 64) : Bool :=
 match B with
 | .const _ => true
 | .var .local x => keepsB x b
 | .rfield _ (.var .local x) => keepsB x b
 | _ => false
lemma projectedBase_kept {B : ExpHOL 64} {b : ProgHOL 64} (h : projectedBaseKeptB B b = true)
 {s : PanSemStateFiniteExact 64 σ} (hc : Completes s b) :
 projectedBaseVal (evaluateHOLFiniteState s b).2 B = projectedBaseVal s B := by
 unfold projectedBaseKeptB at h
 split at h
 · rfl
 · rename_i x
   have hk := keepsB_sound (σ := σ) x b h s (by rcases hc with hc | hc <;> simp [LoopExit,hc])
   simp only [projectedBaseVal,ev,evalHOLExact,hk]
 · rename_i f x
   have hk := keepsB_sound (σ := σ) x b h s (by rcases hc with hc | hc <;> simp [LoopExit,hc])
   simp only [projectedBaseVal,ev,evalHOLExact,hk]
 · contradiction

lemma projectedAddr_step {B : ExpHOL 64} {i : MlS} {s t : PanSemStateFiniteExact 64 σ}
 {k w v d : BitVec 64} (hw : projectedAddr B i k s = some w)
 (hv : s.locals.lookup i = some (.val (.word v)))
 (ht : t.locals.lookup i = some (.val (.word (v+d)))) (hB : projectedBaseVal t B = projectedBaseVal s B) :
 projectedAddr B i k t = some (w+d*k) := by
 unfold projectedAddr at hw ⊢
 rw [hB]
 have hv' : wordLocal s i = some v := by simp [wordLocal,hv]
 have ht' : wordLocal t i = some (v+d) := by simp [wordLocal,ht]
 rw [hv'] at hw
 rw [ht']
 cases hb : projectedBaseVal s B with
 | none => rw [hb] at hw; cases hw
 | some b =>
   rw [hb] at hw
   simp only [Option.some.injEq] at hw ⊢
   rw [← hw,BitVec.add_mul,BitVec.add_assoc]

lemma eval_projectedAddr {s : PanSemStateFiniteExact 64 σ} {i : MlS} {B : ExpHOL 64} {k w : BitVec 64}
 (h : ev s (.op .add [B,.panop .mul [.var .local i,.const k]]) = some (.val (.word w))) :
 projectedAddr B i k s = some w := by
 obtain ⟨bv,m,hb,hm,hw⟩ := ev_add2_inv h
 cases hi : s.locals.lookup i with
 | none => simp [ev,evalHOLExact,evalListHOLExact,hi] at hm
 | some vi =>
   cases vi with
   | val word => cases word with
     | word v =>
       have hv : ev s (.var .local i) = some (.val (.word v)) := hi
       have hmul := ev_mul2 hv (ev_const (s := s) k)
       rw [hmul] at hm
       cases hm
       simp only [projectedAddr,projectedBaseVal,hb,wordLocal,hi]
       exact congrArg some hw.symm
   | rStruct vs => simp [ev,evalHOLExact,evalListHOLExact,hi,valueIsWord,valueWord,panOpHOL] at hm
   | nStruct a b => simp [ev,evalHOLExact,evalListHOLExact,hi,valueIsWord,valueWord,panOpHOL] at hm
#print axioms projectedBase_clk
#print axioms projectedBase_kept
#print axioms projectedAddr_step
#print axioms eval_projectedAddr
end InitECandidate.Solver.MemSafe.BlsSlotCost.Read
