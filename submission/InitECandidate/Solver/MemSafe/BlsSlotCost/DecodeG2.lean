import InitECandidate.Solver.MemSafe.BlsSlotCost.DecodeFp
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.BlsSlotCost.DecodeG2
variable {σ : Type}
def body : ProgHOL 64 := (declPair Guest.Software.guestFn_g2_decode).2.2
def rest : ProgHOL 64 := match body with | .decCall _ _ _ _ k => k | _ => .skip
theorem body_eq : body = .decCall (nm "ok") .one (nm "bls_fp_decode64")
 [.var .local (nm "data"),.var .local (nm "r")] rest := by cbv

theorem body_no_hit : Hoare σ guestCtx
 (fun s => ∃ A : BitVec 64, s.locals.lookup (nm "data") = some (.val (.word A)) ∧ ¬ Hit s.memaddrs A)
 body (fun _ _ => False) := by
 rw [body_eq]
 refine hoare_decCallS InitECandidate.Solver.MemSafe.BlsSlotCost.DecodeFp.read_spec ?_
 intro s hs hp vs hvs callee v st hR hctx hshape
 obtain ⟨A,hp,hno⟩ := hp
 have he : ev s (.var .local (nm "data")) = some (.val (.word A)) := hp
 obtain ⟨v0,vs0,rfl,hv0,ht0⟩ := evs_cons_inv hvs
 rw [he] at hv0
 cases hv0
 exact False.elim (hno (hR A v rfl rfl))

def ReadR (vs : List (ValueHOL 64)) (s : PanSemStateFiniteExact 64 σ) (r : PanSemResultExact 64)
 (_t : PanSemStateFiniteExact 64 σ) : Prop :=
 ∀ A v, vs.head? = some (.val (.word A)) → r = .returned v → Hit s.memaddrs A

theorem read_spec : FunSpec σ guestCtx (nm "g2_decode") ReadR := by
 have hc : ∃ rs, guestCode (nm "g2_decode") =
  some ((declPair Guest.Software.guestFn_g2_decode).2.1,body,rs) :=
  declPair_valid (List.getElem_mem (n := 779) (by decide)) ⟨_,rfl⟩
 obtain ⟨rs,hc⟩ := hc
 have hparams : (declPair Guest.Software.guestFn_g2_decode).2.1 = [(nm "data",.one),(nm "r",.one)] := by cbv
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
end InitECandidate.Solver.MemSafe.BlsSlotCost.DecodeG2
