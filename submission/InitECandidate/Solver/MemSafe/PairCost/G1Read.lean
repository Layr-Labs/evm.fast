import InitECandidate.Solver.MemSafe.PairCost.FromBeCallRead
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.PairCost.Read.G1
variable {σ : Type}
def body : ProgHOL 64 := (declPair Guest.Software.guestFn_bn254_parse_g1).2.2
def rest : ProgHOL 64 := match body with | .decCall _ _ _ _ k => k | _ => .skip
theorem body_eq : body = .decCall (nm "x") (.comb [.one,.one,.one,.one])
    (nm "u256_from_be") [.var .local (nm "data"),.const 32] rest := by cbv

theorem returned_hit {s : PanSemStateFiniteExact 64 σ} {A : BitVec 64} {v : ValueHOL 64}
    (hs : InCtx s guestCtx)
    (hp : s.locals.lookup (nm "data") = some (.val (.word A)))
    (hr : (evaluateHOLFiniteState s body).1 = some (.returned v)) : Hit s.memaddrs A := by
  by_contra hno
  have hc := from_be_call_no_hit (σ := σ) (rn := nm "x") (sh := .comb [.one,.one,.one,.one])
    (e := .var .local (nm "data")) (k := rest)
  rw [← body_eq] at hc
  exact hc s hs ⟨A,hp,hno⟩ (by rw [hr]; trivial)

def ReadR (vs : List (ValueHOL 64)) (s : PanSemStateFiniteExact 64 σ) (r : PanSemResultExact 64)
    (_t : PanSemStateFiniteExact 64 σ) : Prop :=
  ∀ A out v, vs = [.val (.word A),out] → r = .returned v → Hit s.memaddrs A

theorem read_spec : FunSpec σ guestCtx (nm "bn254_parse_g1") ReadR := by
  have hc : ∃ rs, guestCode (nm "bn254_parse_g1") =
      some ((declPair Guest.Software.guestFn_bn254_parse_g1).2.1,body,rs) :=
    declPair_valid (List.getElem_mem (n := 686) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  have hparams : (declPair Guest.Software.guestFn_bn254_parse_g1).2.1 = [(nm "data",.one),(nm "out",.one)] := by cbv
  rw [hparams] at hc
  intro vs b callee rs' hl s hs hloc r hr A out v hvs hrv
  rw [guestCtx_code] at hl
  obtain ⟨rfl,-,A0,O0,rfl,hsA,hsO,hA,hO⟩ := lookupCode_two hc (by decide) hl
  simp only [List.cons.injEq,and_true] at hvs
  obtain ⟨rfl,rfl⟩ := hvs
  cases hrv
  exact returned_hit hs (by rw [hloc]; exact hA) hr
#print axioms read_spec
end InitECandidate.Solver.MemSafe.PairCost.Read.G1
