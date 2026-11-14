import InitECandidate.Solver.MemSafe.BlsSlotCost.ZeroRead
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.BlsSlotCost.DecodeFp
variable {σ : Type}
def body : ProgHOL 64 := (declPair Guest.Software.guestFn_bls_fp_decode64).2.2
def rest : ProgHOL 64 := match body with | .decCall _ _ _ _ k => k | _ => .skip
theorem body_eq : body = .decCall (nm "z") .one (nm "is_zero_bytes")
 [.var .local (nm "p"),.const 16] rest := by cbv

theorem body_no_hit : Hoare σ guestCtx
 (fun s => ∃ A : BitVec 64, s.locals.lookup (nm "p") = some (.val (.word A)) ∧ ¬ Hit s.memaddrs A)
 body (fun _ _ => False) := by
 rw [body_eq]
 refine hoare_decCallS InitECandidate.Solver.MemSafe.BlsSlotCost.ZeroRead.read_spec ?_
 intro s hs hp vs hvs callee v st hR hctx hshape
 obtain ⟨A,hp,hno⟩ := hp
 have he : ev s (.var .local (nm "p")) = some (.val (.word A)) := hp
 obtain ⟨v0,vs0,rfl,hv0,ht0⟩ := evs_cons_inv hvs
 rw [he] at hv0
 cases hv0
 obtain ⟨v1,vs1,rfl,hv1,ht1⟩ := evs_cons_inv ht0
 change some (.val (.word (16 : BitVec 64))) = some v1 at hv1
 cases hv1
 change some [] = some vs1 at ht1
 cases ht1
 exact False.elim (hno (hR A v rfl rfl))

def ReadR (vs : List (ValueHOL 64)) (s : PanSemStateFiniteExact 64 σ) (r : PanSemResultExact 64)
 (_t : PanSemStateFiniteExact 64 σ) : Prop :=
 ∀ A v, vs.head? = some (.val (.word A)) → r = .returned v → Hit s.memaddrs A

theorem read_spec : FunSpec σ guestCtx (nm "bls_fp_decode64") ReadR := by
 have hc : ∃ rs, guestCode (nm "bls_fp_decode64") =
  some ((declPair Guest.Software.guestFn_bls_fp_decode64).2.1,body,rs) :=
  declPair_valid (List.getElem_mem (n := 719) (by decide)) ⟨_,rfl⟩
 obtain ⟨rs,hc⟩ := hc
 have hparams : (declPair Guest.Software.guestFn_bls_fp_decode64).2.1 = [(nm "p",.one),(nm "out",.one)] := by cbv
 rw [hparams] at hc
 intro vs b callee rs' hl s hs hloc r hr A v hvs hrv
 rw [guestCtx_code] at hl
 obtain ⟨rfl,-,A0,N0,rfl,hsA,hsN,hA,hN⟩ := lookupCode_two hc (by decide) hl
 have hAeq : A0 = .val (.word A) := by simpa using hvs
 subst A0
 cases hrv
 by_contra hno
 exact body_no_hit s hs ⟨A,by rw [hloc]; exact hA,hno⟩ (by rw [hr]; trivial)
#print axioms read_spec
end InitECandidate.Solver.MemSafe.BlsSlotCost.DecodeFp
