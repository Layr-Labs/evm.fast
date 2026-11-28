import InitECandidate.Solver.Spec.Inv.CostI

/-!
# Cost and normal-completion triples together

`CHn σ X P p B Q`: from `P`, a Good run of `p` costs at most `B` ticks, and every tracked
result is a normal completion in a state satisfying `Q`. The rules below thread both parts
through sequencing, local declarations, conditionals, assignments and measured loops.
-/

set_option autoImplicit false

namespace InitECandidate.Solver.SortAddr
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

def CHn (σ : Type) (X : Ctx 64) (P : PanSemStateFiniteExact 64 σ → Prop) (p : ProgHOL 64)
    (B : Nat) (Q : PanSemStateFiniteExact 64 σ → Prop) : Prop :=
  Inv.CostP σ X P p B ∧ Hoare σ X P p (fun r t => r = none ∧ Q t)

theorem CHn.pre {P P' Q : PanSemStateFiniteExact 64 σ → Prop} {p : ProgHOL 64} {B : Nat}
    (h : CHn σ X P p B Q) (hP : ∀ s, InCtx s X → P' s → P s) : CHn σ X P' p B Q :=
  ⟨h.1.pre hP, hoare_pre h.2 hP⟩

theorem CHn.post {P Q Q' : PanSemStateFiniteExact 64 σ → Prop} {p : ProgHOL 64} {B : Nat}
    (h : CHn σ X P p B Q) (hQ : ∀ t, InCtx t X → Q t → Q' t) : CHn σ X P p B Q' :=
  ⟨h.1, hoare_post h.2 fun _ t ht _ h => ⟨h.1, hQ t ht h.2⟩⟩

theorem CHn.mono {P Q : PanSemStateFiniteExact 64 σ → Prop} {p : ProgHOL 64} {B B' : Nat}
    (h : CHn σ X P p B Q) (hB : B ≤ B') : CHn σ X P p B' Q :=
  ⟨h.1.mono hB, h.2⟩

theorem chn_exists {α : Type} {P : α → PanSemStateFiniteExact 64 σ → Prop}
    {Q : PanSemStateFiniteExact 64 σ → Prop} {p : ProgHOL 64} {B : Nat}
    (h : ∀ a, CHn σ X (P a) p B Q) : CHn σ X (fun s => ∃ a, P a s) p B Q :=
  ⟨Inv.costP_exists fun a => (h a).1, hoare_exists fun a => (h a).2⟩

theorem chn_seq {P R Q : PanSemStateFiniteExact 64 σ → Prop} {a b : ProgHOL 64} {Ba Bb : Nat}
    (ha : CHn σ X P a Ba R) (hb : CHn σ X R b Bb Q) : CHn σ X P (.seq a b) (Ba + Bb) Q :=
  ⟨Inv.costP_seq ha.1 (hoare_post ha.2 fun _ _ _ _ h _ => h.2) hb.1,
    hoare_seq ha.2 (fun _ _ _ hr _ h => absurd h.1 hr) (hoare_pre hb.2 fun _ _ h => h.2)⟩

theorem chn_dec {P Q : PanSemStateFiniteExact 64 σ → Prop} {n : MlS} {sh : ShapeHOL}
    {e : ExpHOL 64} {body : ProgHOL 64} {B : Nat}
    (h : ∀ s, InCtx s X → P s → ∀ v, ev s e = some v → shapeEqHOL sh (shapeOfHOLExact v) = true →
      CHn σ X (fun t => t = setVarHOLFinite n v s) body B
        (fun t => Q { t with locals := t.locals.resVarEq (n, s.locals.lookup n) })) :
    CHn σ X P (.dec n sh e body) B Q :=
  ⟨Inv.costP_dec fun s hs hp v hv hsh => (h s hs hp v hv hsh).1,
    hoare_dec fun s hs hp v hv hsh => (h s hs hp v hv hsh).2⟩

theorem chn_ite {P Q : PanSemStateFiniteExact 64 σ → Prop} {c : ExpHOL 64} {a b : ProgHOL 64}
    {Ba Bb : Nat}
    (ha : CHn σ X (fun s => P s ∧ ∃ w, ev s c = some (.val (.word w)) ∧ w ≠ 0) a Ba Q)
    (hb : CHn σ X (fun s => P s ∧ ev s c = some (.val (.word 0))) b Bb Q) :
    CHn σ X P (.ite c a b) (max Ba Bb) Q :=
  ⟨Inv.costP_ite ha.1 hb.1, hoare_ite ha.2 hb.2⟩

theorem chn_assign {P Q : PanSemStateFiniteExact 64 σ → Prop} {n : MlS} {e : ExpHOL 64}
    (h : ∀ s, InCtx s X → P s → ∀ v, ev s e = some v →
      isValidValueHOLFinite s .local n v = true → Q (setVarHOLFinite n v s)) :
    CHn σ X P (.assign .local n e) 0 Q :=
  ⟨Inv.costP_of_cost (cost_assign _ _ _), hoare_assign fun s hs hp v hv hval => ⟨rfl, h s hs hp v hv hval⟩⟩

theorem chn_skip {P Q : PanSemStateFiniteExact 64 σ → Prop}
    (h : ∀ s, InCtx s X → P s → Q s) : CHn σ X P .skip 0 Q :=
  ⟨Inv.costP_of_cost cost_skip, hoare_skip fun s hs hp => ⟨rfl, h s hs hp⟩⟩

/-- A measured loop. -/
theorem chn_while {I Q : PanSemStateFiniteExact 64 σ → Prop} {c : ExpHOL 64} {body : ProgHOL 64}
    {Bb : Nat} (μ : PanSemStateFiniteExact 64 σ → Nat) (M : Nat)
    (hclk : ∀ s, I s → I (decClockHOLFinite s)) (hμclk : ∀ s, μ (decClockHOLFinite s) = μ s)
    (hM : ∀ s, InCtx s X → I s → CondTrue s c → μ s ≤ M)
    (hbody : ∀ k, CHn σ X (fun s => I s ∧ CondTrue s c ∧ μ s = k) body Bb
      (fun t => I t ∧ μ t < k))
    (hexit : ∀ s, InCtx s X → I s → ev s c = some (.val (.word 0)) → Q s) :
    CHn σ X I (.while c body) ((M + 1) * (Bb + 1)) Q := by
  refine ⟨Inv.costP_while μ M hclk hμclk ?_ ?_ hM ?_, ?_⟩
  · exact fun s hs ⟨hi, hc⟩ hg => (hbody (μ s)).1 s hs ⟨hi, hc, rfl⟩ hg
  · intro s hs ⟨hi, hc⟩ ht _
    exact ((hbody (μ s)).2 s hs ⟨hi, hc, rfl⟩ ht).2.1
  · intro k s hs h ht _
    exact ((hbody k).2 s hs h ht).2.2
  · refine hoare_while hclk ?_ (fun s hs hi h0 => ⟨rfl, hexit s hs hi h0⟩)
    intro s hs ⟨hi, hc⟩ ht
    have h := (hbody (μ s)).2 s hs ⟨hi, hc, rfl⟩ ht
    obtain ⟨hr, hI, -⟩ := h
    exact ⟨fun _ => hI, fun h => by rw [hr] at h; simp at h,
      fun h => by rw [hr] at h; simp at h, fun _ h => by rw [hr] at h; simp at h⟩

end InitECandidate.Solver.SortAddr
