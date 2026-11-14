import InitECandidate.Solver.MemSafe.BalCost.Loop
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS ProgHOL ExpHOL)
open Flapjack.Compiler.Encoders.Asm
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.CsrCost.DataLoop

def CounterAtMost {σ : Type} (i : MlS) (M : Nat) (s : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ v : BitVec 64, s.locals.lookup i = some (.val (.word v)) ∧ v.toNat ≤ M

theorem costP_while_bounded_guard {σ : Type} {X : Ctx 64}
    {J : PanSemStateFiniteExact 64 σ → Prop} {i : MlS} {E : ExpHOL 64}
    {body : ProgHOL 64} {B M : Nat} (hM : M < 2 ^ 63)
    (hclk : ∀ s, J s → J (decClockHOLFinite s))
    (hbody : Inv.CostP σ X (fun s => J s ∧ CondTrue s (.cmp .less (.var .local i) E)) body B)
    (hinv : Hoare σ X (fun s => J s ∧ CondTrue s (.cmp .less (.var .local i) E)) body
      (fun r t => r = none → J t))
    (hnc : NoCont σ body) (hstep : Steps σ i (· + 1) body)
    (hguard : ∀ s, InCtx s X → J s → ∃ C : BitVec 64,
      ev s E = some (.val (.word C)) ∧ C.toNat ≤ M) :
    Inv.CostP σ X (fun s => J s ∧ CounterAtMost i M s)
      (.while (.cmp .less (.var .local i) E) body) ((M + 1) * (B + 1)) := by
  let I : PanSemStateFiniteExact 64 σ → Prop := fun s => J s ∧ CounterAtMost i M s
  let μ : PanSemStateFiniteExact 64 σ → Nat := fun s => M - InitECandidate.Solver.SourceCost.wordOf s i
  have guard : ∀ s, InCtx s X → I s → CondTrue s (.cmp .less (.var .local i) E) →
      ∃ v : BitVec 64, s.locals.lookup i = some (.val (.word v)) ∧ v.toNat < M := by
    intro s hs ⟨hj, v, hv, hvm⟩ hc
    obtain ⟨C, he, hcm⟩ := hguard s hs hj
    have hvpos : v.toNat < 9223372036854775808 := by omega
    have hcpos : C.toNat < 9223372036854775808 := by omega
    have hcmp := cond_less_known_words hv he hc
    have hlt : v.toNat < C.toNat := by
      simpa [wordCmpHOL, holAsmSignedLess, hvpos, hcpos] using hcmp
    exact ⟨v, hv, by omega⟩
  have inc : ∀ v : BitVec 64, v.toNat < M → (v + 1).toNat = v.toNat + 1 := by
    intro v hv
    have hone : (1 : BitVec 64).toNat = 1 := by decide
    simp only [BitVec.toNat_add, hone, Nat.reducePow]
    exact Nat.mod_eq_of_lt (by omega)
  refine Inv.costP_while μ M ?_ (fun _ => rfl)
    (hbody.pre (fun s hs hp => ⟨hp.1.1, hp.2⟩)) ?_ (fun _ _ _ _ => Nat.sub_le _ _) ?_
  · intro s ⟨hj, v, hv, hvm⟩
    exact ⟨hclk s hj, v, hv, hvm⟩
  · intro s hs hp hg hr
    have hn : (evaluateHOLFiniteState s body).1 = none :=
      hr.elim id (fun h => absurd h (hnc s))
    have hj := hinv s hs ⟨hp.1.1, hp.2⟩ hg hn
    obtain ⟨v, hv, hvm⟩ := guard s hs hp.1 hp.2
    have hafter := hstep s v hv hr
    refine ⟨hj, v + 1, hafter, ?_⟩
    rw [inc v hvm]
    omega
  · intro k s hs ⟨hi, hc, hk⟩ hg hr
    obtain ⟨v, hv, hvm⟩ := guard s hs hi hc
    have hafter := hstep s v hv hr
    change M - InitECandidate.Solver.SourceCost.wordOf s i = k at hk
    simp only [InitECandidate.Solver.SourceCost.wordOf, hv] at hk
    change M - InitECandidate.Solver.SourceCost.wordOf (evaluateHOLFiniteState s body).2 i < k
    simp only [InitECandidate.Solver.SourceCost.wordOf, hafter]
    rw [inc v hvm]
    omega

#print axioms costP_while_bounded_guard
end InitECandidate.Solver.MemSafe.CsrCost.DataLoop
