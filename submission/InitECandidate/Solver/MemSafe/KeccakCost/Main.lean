import InitECandidate.Solver.MemSafe.KeccakCost.Body
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.KeccakCost
variable {σ : Type}
def Arg (vs : List (ValueHOL 64)) (_s : PanSemStateFiniteExact 64 σ) : Prop :=
 ∃ N : BitVec 64, vs[1]? = some (.val (.word N)) ∧ N.toNat ≤ 135
theorem callee : Inv.CalleeCostP σ guestCtx (nm "keccak256") Arg InitECandidate.Solver.MemSafe.KeccakCost.bound := by
 have hc : guestCode (nm "keccak256") = some ((declPair Guest.Software.guestFn_keccak256).2.1,InitECandidate.Solver.MemSafe.KeccakCost.body,.one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 103) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs;cbv
   conv => rhs;cbv)
 have hp : (declPair Guest.Software.guestFn_keccak256).2.1 =
  [(nm "p",.one),(nm "n",.one),(nm "out",.one)] := by cbv
 rw [hp] at hc
 intro vs bd callee rs hl
 rw [guestCtx_code] at hl
 obtain ⟨rfl,-,hlen,hbind⟩ := lookupCode_gen hc hl
 apply InitECandidate.Solver.MemSafe.KeccakCost.body_cost.pre
 intro s hs ⟨hloc,hP⟩
 obtain ⟨N,hN,hle⟩ := hP
 have hi : 1 < vs.length := by simp only [List.length_cons,List.length_nil] at hlen;omega
 have harg : vs[1] = .val (.word N) := by
  simpa only [List.getElem?_eq_getElem hi,Option.some.injEq] using hN
 have hn := (hbind 1 (by decide) hi).1
 change callee.lookup (nm "n") = some vs[1] at hn
 exact ⟨N,by rw [hloc,hn,harg],hle⟩
theorem call {info : Option (Option (VarKind × MlS) × Option (MlS × MlS × ProgHOL 64))}
 {p out : ExpHOL 64} {nw : Nat} (hnw : nw ≤ 135)
 (hh : ∀ rid hid hv hp, info = some (rid,some (hid,hv,hp)) → Cost σ guestCtx hp 0) :
 Cost σ guestCtx (.call info (nm "keccak256") [p,.const (BitVec.ofNat 64 nw),out]) (1+InitECandidate.Solver.MemSafe.KeccakCost.bound+0) := by
 apply Inv.cost_of_costP_true
 apply Inv.costP_call (Bh := 0) callee
 · intro s hs hp vs hvs callee
   obtain ⟨A,vs1,hvs0,hA,hrest⟩ := evs_cons_inv hvs
   obtain ⟨B,vs2,hvs1,hB,hrest2⟩ := evs_cons_inv hrest
   have hn := ev_cw s nw
   have hvn : B = .val (.word (BitVec.ofNat 64 nw)) := by
    exact (Option.some.inj (hn.symm.trans hB)).symm
   refine ⟨BitVec.ofNat 64 nw,?_,?_⟩
   · have hvseq : vs = A :: B :: vs2 := by rw [hvs0,hvs1]
     rw [hvseq,hvn];rfl
   · change nw % 2^64 ≤ 135
     exact (Nat.mod_le _ _).trans hnw
 · exact hh
#print axioms callee
#print axioms call
end InitECandidate.Solver.MemSafe.KeccakCost
