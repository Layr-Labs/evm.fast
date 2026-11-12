import InitECandidate.Solver.MemSafe.Frames.GkHoare

/-!
# Locals-tracking combinators over the gas checker's `GQ` (sonnet-ops)

`gc_sound` forgets locals (`GQ` is locals-blind), but a few handlers (`op_jump`, `op_jumpi`) need a
declared local's shape after several statements. `HL K b l` is `GQ K b` plus "a normal ending keeps
the locals `l`"; the combinators below copy `gc_sound`'s `call` / `decCall` / `seq` / `ite` cases
with that extra clause.
-/

set_option autoImplicit false
set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

section
variable {σ : Type} {X : Ctx 64} {E : GEnv} {K : Nat → State σ → Prop}

/-- `GQ K b` plus: a normal ending has the locals `l`. -/
def HL (K : Nat → State σ → Prop) (b : Bool) (l : Locs) (ro : Option (PanSemResultExact 64))
    (t : State σ) : Prop :=
  GQ K b ro t ∧ (ro = none → t.locals = l)

theorem hl_skip {b : Bool} {u0 : State σ} (hu : K (bd b) u0) : HoareG σ X (fun t => t = u0) .skip (HL K b u0.locals) :=
  hoareG_skip fun s _ hs => by subst hs; exact ⟨⟨fun _ => hu, fun r hr => by cases hr⟩, fun _ => rfl⟩

/-- A statement call keeping the locals. -/
theorem hl_call (hK : KOK K) (hC : CallSem σ X E K) {b b1 : Bool} {f : MlS}
    {args : List (ExpHOL 64)} (h : callCl E b f args = some b1) {u0 : State σ} (hu : K (bd b) u0) :
    HoareG σ X (fun t => t = u0) (callD f args) (HL K b1 u0.locals) := by
  obtain ⟨R, hf, hstep⟩ := hC b b1 f args h
  refine hoareG_callD hf ?_ ?_
  · intro s _ hs vs hvs callee v st hR _
    subst hs
    refine ⟨⟨fun _ => kok_loc hK ?_ _, fun r hr => by cases hr⟩, fun _ => rfl⟩
    exact hstep _ hu vs hvs callee _ st hR (by simp [Good]) (not_abortive_ret v)
  · intro s _ hs vs hvs callee r st hR _ habn
    subst hs
    refine ⟨⟨fun h0 => (by cases h0), fun r' hr' hna => ?_⟩, fun h0 => by cases h0⟩
    simp only [Option.some.injEq] at hr'; subst hr'
    have := hstep _ hu vs hvs callee r st hR (good_of_abn habn) hna
    rw [cbd_abn habn] at this
    rw [rbd_abn habn]
    exact kok_loc hK this _

/-- `var rn = f(args); p` with the continuation seeing the shape and the locals. -/
theorem hl_decCall (hK : KOK K) (hC : CallSem σ X E K) {b b1 b' : Bool} {rn f : MlS}
    {sh : ShapeHOL} {args : List (ExpHOL 64)} {p : ProgHOL 64}
    (h : callCl E b f args = some b1) {u0 : State σ} (hu : K (bd b) u0)
    (hcont : ∀ t : State σ, K (bd b1) t → t.locals = u0.locals → ∀ v : ValueHOL 64,
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      HoareG σ X (fun s => s = setVarHOLFinite rn v t) p (GQ K b')) :
    HoareG σ X (fun t => t = u0) (.decCall rn sh f args p) (GQ K b') := by
  obtain ⟨R, hf, hstep⟩ := hC b b1 f args h
  refine hoareG_decCall hf ?_ ?_
  · intro s _ hs vs hvs callee v st hR _ hsh
    subst hs
    have hk := hstep _ hu vs hvs callee _ st hR (by simp [Good]) (not_abortive_ret v)
    exact hoareG_conseq (hcont { st with locals := s.locals } (kok_loc hK hk _) rfl v hsh)
      (fun _ _ h => h) fun r t _ _ hq => gq_loc hK hq _
  · intro s _ hs vs hvs callee r st hR _ habn
    subst hs
    refine ⟨fun h0 => (by cases h0), fun r' hr' hna => ?_⟩
    simp only [Option.some.injEq] at hr'; subst hr'
    have := hstep _ hu vs hvs callee r st hR (good_of_abn habn) hna
    rw [cbd_abn habn] at this
    rw [rbd_abn habn]
    exact kok_loc hK this _

theorem hl_gq {b : Bool} {l : Locs} {ro : Option (PanSemResultExact 64)} {t : State σ}
    (h : HL K b l ro t) : GQ K b ro t := h.1

/-- Sequence: the tail sees the intermediate state and its locals; the result tracks locals. -/
theorem hl_seq {p q : ProgHOL 64} {b1 b' : Bool} {u0 : State σ}
    (hp : HoareG σ X (fun t => t = u0) p (HL K b1 u0.locals))
    (hq : ∀ u : State σ, K (bd b1) u → u.locals = u0.locals →
      HoareG σ X (fun t => t = u) q (HL K b' u0.locals)) :
    HoareG σ X (fun t => t = u0) (p.seq q) (HL K b' u0.locals) := by
  refine hoareG_seq (R := HL K b1 u0.locals) hp ?_ (hoareG_pt fun u hu => hq u (hu.1.1 rfl) (hu.2 rfl))
  intro r t _ hr _ h
  exact ⟨⟨fun h0 => absurd h0 hr, h.1.2⟩, fun h0 => absurd h0 hr⟩

/-- Sequence ending the tracking. -/
theorem hl_seq_last {p q : ProgHOL 64} {b1 b' : Bool} {u0 : State σ}
    (hp : HoareG σ X (fun t => t = u0) p (HL K b1 u0.locals))
    (hq : ∀ u : State σ, K (bd b1) u → u.locals = u0.locals →
      HoareG σ X (fun t => t = u) q (GQ K b')) :
    HoareG σ X (fun t => t = u0) (p.seq q) (GQ K b') := by
  refine hoareG_seq (R := HL K b1 u0.locals) hp ?_ (hoareG_pt fun u hu => hq u (hu.1.1 rfl) (hu.2 rfl))
  intro r t _ hr _ h
  exact ⟨fun h0 => absurd h0 hr, h.1.2⟩

/-- `return e` at status `true`. -/
theorem hl_return (hK : KOK K) {e : ExpHOL 64} {u0 : State σ} (hu : K 1 u0) (l : Locs) :
    HoareG σ X (fun t => t = u0) (.return e) (HL K true l) := by
  refine hoareG_return fun s _ hs v _ => ?_
  subst hs
  refine ⟨⟨fun h0 => (by cases h0), fun r hr _ => ?_⟩, fun h0 => by cases h0⟩
  cases hr
  exact hK.congr _ _ _ hu rfl rfl rfl rfl

/-- `throw x e`. -/
theorem hl_raise (hK : KOK K) {x : MlS} {e : ExpHOL 64} {b : Bool} {u0 : State σ}
    (hu : K (bd b) u0) (l : Locs) :
    HoareG σ X (fun t => t = u0) (.raise x e) (HL K b l) := by
  refine hoareG_raise fun s _ hs v _ => ?_
  subst hs
  refine ⟨⟨fun h0 => (by cases h0), fun r hr _ => ?_⟩, fun h0 => by cases h0⟩
  cases hr
  exact hK.congr _ _ _ (hK.mono _ _ _ hu (Nat.zero_le _)) rfl rfl rfl rfl

/-- `if c { p } else { q }` with both branches tracked. -/
theorem hl_ite {c : ExpHOL 64} {p q : ProgHOL 64} {b : Bool} {u0 : State σ}
    (hp : HoareG σ X (fun t => t = u0 ∧ ∃ w, ev t c = some (.val (.word w)) ∧ w ≠ 0) p
      (HL K b u0.locals))
    (hq : HoareG σ X (fun t => t = u0 ∧ ev t c = some (.val (.word 0))) q (HL K b u0.locals)) :
    HoareG σ X (fun t => t = u0) (.ite c p q) (HL K b u0.locals) :=
  hoareG_ite hp hq

/-- `if c { p } else { q }` with branches that ignore the condition. -/
theorem hl_ite' {c : ExpHOL 64} {p q : ProgHOL 64} {b : Bool} {u0 : State σ} {l : Locs}
    (hp : HoareG σ X (fun t => t = u0) p (HL K b l))
    (hq : HoareG σ X (fun t => t = u0) q (HL K b l)) :
    HoareG σ X (fun t => t = u0) (.ite c p q) (HL K b l) :=
  hoareG_ite (hoareG_conseq hp (fun _ _ h => h.1) (fun _ _ _ _ h => h))
    (hoareG_conseq hq (fun _ _ h => h.1) (fun _ _ _ _ h => h))

end

end InitECandidate.Solver.MemSafe.Frames
