import InitECandidate.Solver.MemSafe.BlsScalar.G1Body
import InitECandidate.Solver.MemSafe.Entry
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsScalar.G1
variable {σ : Type}
def Arg (vs : List (ValueHOL 64)) (_s : PanSemStateFiniteExact 64 σ) : Prop :=
 ∃ N : BitVec 64, vs[3]? = some (.val (.word N)) ∧ N.toNat ≤ 10
theorem callee : Inv.CalleeCostP σ guestCtx (nm "g1_mul") Arg InitECandidate.Solver.MemSafe.BlsScalar.G1Body.bound := by
 have hc : guestCode (nm "g1_mul") = some ((declPair Guest.Software.guestFn_g1_mul).2.1,InitECandidate.Solver.MemSafe.BlsScalar.Parts.body1,.one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 764) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs;cbv
   conv => rhs;cbv)
 have hp : (declPair Guest.Software.guestFn_g1_mul).2.1 =
  [(nm "r",.one),(nm "p",.one),(nm "kptr",.one),(nm "n",.one)] := by cbv
 rw [hp] at hc
 intro vs bd callee rs hl
 rw [guestCtx_code] at hl
 obtain ⟨rfl,-,hlen,hbind⟩ := lookupCode_gen hc hl
 apply InitECandidate.Solver.MemSafe.BlsScalar.G1Body.body_cost.pre
 intro s hs ⟨hloc,hP⟩
 obtain ⟨N,hN,hle⟩ := hP
 have hi : 3 < vs.length := by simp only [List.length_cons,List.length_nil] at hlen;omega
 have harg : vs[3] = .val (.word N) := by
  simpa only [List.getElem?_eq_getElem hi,Option.some.injEq] using hN
 have hn := (hbind 3 (by decide) hi).1
 change callee.lookup (nm "n") = some vs[3] at hn
 exact ⟨N,by rw [hloc,hn,harg],hle⟩
theorem call {info : Option (Option (VarKind × MlS) × Option (MlS × MlS × ProgHOL 64))}
 {r p k : ExpHOL 64} {nw : Nat} (hnw : nw ≤ 10)
 (hh : ∀ rid hid hv hp, info = some (rid,some (hid,hv,hp)) → Cost σ guestCtx hp 0) :
 Cost σ guestCtx (.call info (nm "g1_mul") [r,p,k,.const (BitVec.ofNat 64 nw)]) (1+InitECandidate.Solver.MemSafe.BlsScalar.G1Body.bound+0) := by
 apply Inv.cost_of_costP_true
 apply Inv.costP_call (Bh := 0) callee
 · intro s hs hp vs hvs callee
   obtain ⟨A,vs1,hvs0,hA,hrest⟩ := evs_cons_inv hvs
   obtain ⟨B,vs2,hvs1,hB,hrest2⟩ := evs_cons_inv hrest
   obtain ⟨C,vs3,hvs2,hC,hrest3⟩ := evs_cons_inv hrest2
   have he := evs_cons hA (evs_cons hB (evs_cons hC (evs_cons (ev_cw s nw) evs_nil)))
   have hseq : vs = [A,B,C,.val (.word (BitVec.ofNat 64 nw))] := Option.some.inj (hvs.symm.trans he)
   refine ⟨BitVec.ofNat 64 nw,?_,?_⟩
   · rw [hseq];rfl
   · change nw % 2^64 ≤ 10
     exact (Nat.mod_le _ _).trans hnw
 · exact hh
#print axioms callee
#print axioms call
end InitECandidate.Solver.MemSafe.BlsScalar.G1
