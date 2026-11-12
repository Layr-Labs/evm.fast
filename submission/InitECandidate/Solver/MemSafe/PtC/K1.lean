import InitECandidate.Solver.MemSafe.Ptx.F3mClose
import InitECandidate.Solver.MemSafe.Wg.CostBase

/-!
# PtC: the cost kit, part 1 (the exact state after a binder, extracted from a Hoare rule)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.PtC
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Ptx

variable {σ : Type}

/-- Cost and Hoare facts together. -/
abbrev CW' (P : State σ → Prop) (c : ProgHOL 64) (B : Nat) (Q : Option (PanSemResultExact 64) → State σ → Prop) : Prop :=
  Eb.CW P c B Q

/-- `var rn = f(args); k'` after a returning call: `k'` runs from the exact state. -/
theorem eval_decCall_ret {s : State σ} {rn f : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)} (k' : ProgHOL 64)
    (hs : InCtx s guestCtx)
    {vs : List (ValueHOL 64)} (hvs : evs s args = some vs) {body : ProgHOL 64} {callee : Locs} {rs : ShapeHOL}
    (hlook : lookupCodeHOLFinite guestCtx.code.lookup f vs = some (body, callee, rs)) (hclk : s.clock ≠ 0)
    {v : ValueHOL 64} {st : State σ}
    (hbody : evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = (some (.returned v), st))
    (hsh : shapeEqHOL (shapeOfHOLExact v) sh = true) (hrs : shapeEqHOL (shapeOfHOLExact v) rs = true) :
    evaluateHOLFiniteState s (.decCall rn sh f args k') =
      ((evaluateHOLFiniteState (setVarHOLFinite rn v { st with locals := s.locals }) k').1,
       { (evaluateHOLFiniteState (setVarHOLFinite rn v { st with locals := s.locals }) k').2 with
         locals := HolFiniteMapExact.resVarEq
           (evaluateHOLFiniteState (setVarHOLFinite rn v { st with locals := s.locals }) k').2.locals
           (rn, s.locals.lookup rn) }) := by
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.decCall rn sh f args k')]
  dsimp only
  rw [show evalListHOLFinite s (h := fun address => Classical.propDecidable (s.memaddrs address)) args = some vs from hvs]
  dsimp only
  rw [hs.1, hlook]
  dsimp only
  rw [if_neg hclk]
  try dsimp only
  rw [hbody]
  try dsimp only
  rw [if_pos (by simp [hsh, hrs])]


/-- `costP_decCall` with the whole run exposed to the continuation (no `FunSpec` needed). -/
theorem costP_decCall_ex {P : State σ → Prop} {rn f : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)} {k : ProgHOL 64}
    {Pre : List (ValueHOL 64) → State σ → Prop} {Bf Bk : Nat}
    (hf : Inv.CalleeCostP σ guestCtx f Pre Bf)
    (hpre : ∀ s, InCtx s guestCtx → P s → ∀ vs, evs s args = some vs →
      ∀ callee, Pre vs (callEntryStateHOLFinite s callee))
    (hk : ∀ s : State σ, InCtx s guestCtx → P s → ∀ vs, evs s args = some vs →
      ∀ (body : ProgHOL 64) (callee : Locs) (rs : ShapeHOL) (v : ValueHOL 64) (st : State σ),
        lookupCodeHOLFinite guestCtx.code.lookup f vs = some (body, callee, rs) → s.clock ≠ 0 →
        evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = (some (.returned v), st) →
        shapeEqHOL (shapeOfHOLExact v) sh = true → shapeEqHOL (shapeOfHOLExact v) rs = true →
        InCtx st guestCtx →
        Inv.CostP σ guestCtx (fun t => t = setVarHOLFinite rn v { st with locals := s.locals }) k Bk) :
    Inv.CostP σ guestCtx P (.decCall rn sh f args k) (1 + Bf + Bk) := by
  intro s hs hp hto
  revert hto
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.decCall rn sh f args k)]
  dsimp only
  split
  · intro _; (try dsimp only); omega
  · rename_i values hvals
    rw [hs.1]
    split
    · intro _; (try dsimp only); omega
    · rename_i body callee rs hlook
      split
      · intro h; exact absurd rfl h.1
      · rename_i hclock
        have hb : ∀ r st, evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = (r, st) →
            Good r → s.clock ≤ st.clock + 1 + Bf := by
          intro r st heq hr
          have h1 := hf values body callee rs hlook (callEntryStateHOLFinite s callee)
            (by exact hs) ⟨rfl, hpre s hs hp values hvals callee⟩ (by rw [heq]; exact hr)
          rw [heq] at h1
          simp only [callEntryStateHOLFinite] at h1
          omega
        have hctx := inCtx_eval (entry_inCtx hs callee) body
        cases ho : evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body with
        | mk r st =>
          rw [ho] at hctx
          dsimp only
          cases r with
          | none =>
            intro _
            have h1 := hb _ _ ho (by simp [Good])
            (try dsimp only); omega
          | some r =>
            cases r with
            | returned v =>
              dsimp only
              split
              · rename_i hsh
                simp only [Bool.and_eq_true] at hsh
                intro hto
                have h1 := hb _ _ ho (by simp [Good])
                have g1 := hk s hs hp values hvals body callee rs v st hlook hclock ho hsh.1 hsh.2 hctx _
                  (by exact hctx) rfl hto
                simp only [setVarHOLFinite] at g1 ⊢
                omega
              · intro _
                have h1 := hb _ _ ho (by simp [Good])
                (try dsimp only); omega
            | _ =>
              dsimp only
              intro hto
              have h1 := hb _ _ ho (by simp_all [Good])
              (try simp only [emptyLocalsHOLFinite]); omega


/-- Locals-insensitive predicate on one binder value. -/
abbrev BLocV (Bk : ValueHOL 64 → State σ → Prop) : Prop := ∀ v, BLoc (Bk v)

theorem bloc_eta {B : State σ → Prop} (h : BLoc B) {X : State σ} {l : Locs} {c : Nat}
    (hb : B { X with locals := l, clock := c }) : B X := by
  have := h _ X.locals X.clock hb
  exact this

/-- **A binder `var rn = f(args); k` with a conditional/table callee cost.** The Hoare half is a rule instance `hrule` of
the memory walk (generic in the continuation); the cost half recovers the exact state of the continuation by running the
rule on the probe continuation `return rn`. -/
theorem cw_decCall_gen
    {B : State σ → Prop} {En : Env} {Bk : ValueHOL 64 → State σ → Prop} {Ek : ValueHOL 64 → Env}
    {rn f : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)} {k : ProgHOL 64}
    {QT : Option (PanSemResultExact 64) → State σ → Prop} {Bf Bc : Nat}
    {PreC : List (ValueHOL 64) → State σ → Prop}
    (hQ : ResIns rn QT)
    (hrule : ∀ (k' : ProgHOL 64) (Q' : Option (PanSemResultExact 64) → State σ → Prop), ResIns rn Q' →
      (∀ v, shapeEqHOL (shapeOfHOLExact v) sh = true →
        Hoare σ guestCtx (fun t => Bk v t ∧ LKE (Ek v) t) k' Q') →
      Hoare σ guestCtx (fun t => B t ∧ LKE En t) (.decCall rn sh f args k') Q')
    (hBk : BLocV Bk)
    (hLK : ∀ (s st : State σ) (v : ValueHOL 64), LKE En s → LKE (Ek v) (setVarHOLFinite rn v { st with locals := s.locals }))
    (hrv : ∀ (v : ValueHOL 64) (t : State σ) (w : ValueHOL 64), LKE (Ek v) t → t.locals.lookup rn = some w → Bk v t → Bk w t)
    (hsz : ∀ (t : State σ) (v : ValueHOL 64), shapeEqHOL (shapeOfHOLExact v) sh = true →
      Flapjack.Pancake.PanLang.sizeOfShapeWithContextHOL t.structs (shapeOfHOLExact v) ≤ 32)
    (hc : Inv.CalleeCostP σ guestCtx f PreC Bf)
    (hpre : ∀ s : State σ, InCtx s guestCtx → (B s ∧ LKE En s) → ∀ vs, evs s args = some vs →
      ∀ callee, PreC vs (callEntryStateHOLFinite s callee))
    (hk : ∀ v, shapeEqHOL (shapeOfHOLExact v) sh = true →
      CW' (fun t => Bk v t ∧ LKE (Ek v) t) k Bc QT) :
    CW' (fun t => B t ∧ LKE En t) (.decCall rn sh f args k) (1 + Bf + Bc) QT := by
  refine ⟨?_, hrule k QT hQ (fun v hv => (hk v hv).2)⟩
  let Qp : Option (PanSemResultExact 64) → State σ → Prop :=
    fun r t => ∃ w, r = some (.returned w) ∧ Bk w t
  have hQp : ResIns rn Qp := by
    intro r t old ⟨w, hr, hb⟩
    exact ⟨w, hr, hBk w t _ t.clock hb⟩
  have hprobe := hrule (.return (lv rn)) Qp hQp (by
    intro v hv s hs hp ht
    rw [evaluateHOLFiniteState_return] at ht ⊢
    obtain ⟨hpb, hlk⟩ := hp
    cases hev : ev s (lv rn) with
    | none => simp only [ev] at hev; rw [hev] at ht; simp at ht
    | some w =>
      have hlw : s.locals.lookup rn = some w := hev
      have hbw := hrv v s w hlk hlw hpb
      simp only [ev] at hev
      rw [hev] at ht ⊢
      dsimp only at ht ⊢
      split at ht
      · rename_i hle
        rw [if_pos hle]
        exact ⟨w, rfl, hBk w s _ s.clock hbw⟩
      · simp at ht)
  refine costP_decCall_ex hc hpre ?_
  intro s hs hp vs hvs body callee rs v st hlook hclk hbody hsh hrs hctx
  refine Inv.CostP.pre (hk v hsh).1 fun t _ ht => ?_
  subst ht
  have hev := eval_decCall_ret (rn := rn) (sh := sh) (args := args) (.return (lv rn)) hs hvs hlook hclk hbody hsh hrs
  have hX : ev (setVarHOLFinite rn v { st with locals := s.locals }) (lv rn) = some v := by
    show (setVarHOLFinite rn v { st with locals := s.locals }).locals.lookup rn = some v
    exact lk_set_self _ _ _
  have hr1 : evaluateHOLFiniteState (setVarHOLFinite rn v { st with locals := s.locals }) (.return (lv rn)) =
      (some (.returned v), emptyLocalsHOLFinite (setVarHOLFinite rn v { st with locals := s.locals })) := by
    simp only [ev] at hX
    rw [evaluateHOLFiniteState_return, hX]
    dsimp only
    rw [if_pos (hsz _ v hsh)]
  have := hprobe s hs hp (by rw [hev, hr1]; trivial)
  rw [hev, hr1] at this
  obtain ⟨w, hw, hbw⟩ := this
  have hwv : w = v := by simpa using hw.symm
  rw [hwv] at hbw
  dsimp only at hbw
  have hB' : Bk v (setVarHOLFinite rn v { st with locals := s.locals }) := by
    have := hBk v _ (setVarHOLFinite rn v { st with locals := s.locals }).locals
      (setVarHOLFinite rn v { st with locals := s.locals }).clock hbw
    exact this
  exact ⟨hB', hLK s st v hp.2⟩


/-- `var n = e; k'`: `k'` runs from the exact state. -/
theorem eval_dec_ret {s : State σ} {n : MlS} {sh : ShapeHOL} {e : ExpHOL 64} (k' : ProgHOL 64) {v : ValueHOL 64}
    (hv : ev s e = some v) (hsh : shapeEqHOL sh (shapeOfHOLExact v) = true) :
    evaluateHOLFiniteState s (.dec n sh e k') =
      ((evaluateHOLFiniteState (setVarHOLFinite n v s) k').1,
       { (evaluateHOLFiniteState (setVarHOLFinite n v s) k').2 with
         locals := HolFiniteMapExact.resVarEq
           (evaluateHOLFiniteState (setVarHOLFinite n v s) k').2.locals (n, s.locals.lookup n) }) := by
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.dec n sh e k')]
  dsimp only
  simp only [ev] at hv
  rw [hv]
  dsimp only
  rw [if_pos hsh]

/-- **A binder `var n = e; k` (no call).** -/
theorem cw_dec_gen
    {B : State σ → Prop} {En : Env} {Bk : ValueHOL 64 → State σ → Prop} {Ek : ValueHOL 64 → Env}
    {n : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {k : ProgHOL 64}
    {QT : Option (PanSemResultExact 64) → State σ → Prop} {Bc : Nat}
    (hQ : ResIns n QT)
    (hrule : ∀ (k' : ProgHOL 64) (Q' : Option (PanSemResultExact 64) → State σ → Prop), ResIns n Q' →
      (∀ v, Hoare σ guestCtx (fun t => Bk v t ∧ LKE (Ek v) t) k' Q') →
      Hoare σ guestCtx (fun t => B t ∧ LKE En t) (.dec n sh e k') Q')
    (hBk : BLocV Bk)
    (hLK : ∀ (s : State σ) (v : ValueHOL 64), LKE En s → LKE (Ek v) (setVarHOLFinite n v s))
    (hrv : ∀ (v : ValueHOL 64) (t : State σ) (w : ValueHOL 64), LKE (Ek v) t → t.locals.lookup n = some w →
      Bk v t → Bk w t)
    (hsz : ∀ (t : State σ) (v : ValueHOL 64), shapeEqHOL sh (shapeOfHOLExact v) = true →
      Flapjack.Pancake.PanLang.sizeOfShapeWithContextHOL t.structs (shapeOfHOLExact v) ≤ 32)
    (hk : ∀ v, CW' (fun t => Bk v t ∧ LKE (Ek v) t) k Bc QT) :
    CW' (fun t => B t ∧ LKE En t) (.dec n sh e k) Bc QT := by
  refine ⟨?_, hrule k QT hQ (fun v => (hk v).2)⟩
  let Qp : Option (PanSemResultExact 64) → State σ → Prop :=
    fun r t => ∃ w, r = some (.returned w) ∧ Bk w t
  have hQp : ResIns n Qp := by
    intro r t old ⟨w, hr, hb⟩
    exact ⟨w, hr, hBk w t _ t.clock hb⟩
  have hprobe := hrule (.return (lv n)) Qp hQp (by
    intro v s hs hp ht
    rw [evaluateHOLFiniteState_return] at ht ⊢
    obtain ⟨hpb, hlk⟩ := hp
    cases hev : ev s (lv n) with
    | none => simp only [ev] at hev; rw [hev] at ht; simp at ht
    | some w =>
      have hlw : s.locals.lookup n = some w := hev
      have hbw := hrv v s w hlk hlw hpb
      simp only [ev] at hev
      rw [hev] at ht ⊢
      dsimp only at ht ⊢
      split at ht
      · rename_i hle
        rw [if_pos hle]
        exact ⟨w, rfl, hBk w s _ s.clock hbw⟩
      · simp at ht)
  refine Inv.costP_dec fun s hs hp v hv hsh => ?_
  refine Inv.CostP.pre (hk v).1 fun t _ ht => ?_
  subst ht
  have hev := eval_dec_ret (n := n) (sh := sh) (.return (lv n)) hv hsh
  have hX : ev (setVarHOLFinite n v s) (lv n) = some v := by
    show (setVarHOLFinite n v s).locals.lookup n = some v
    exact lk_set_self _ _ _
  have hr1 : evaluateHOLFiniteState (setVarHOLFinite n v s) (.return (lv n)) =
      (some (.returned v), emptyLocalsHOLFinite (setVarHOLFinite n v s)) := by
    simp only [ev] at hX
    rw [evaluateHOLFiniteState_return, hX]
    dsimp only
    rw [if_pos (hsz _ v hsh)]
  have := hprobe s hs hp (by rw [hev, hr1]; trivial)
  rw [hev, hr1] at this
  obtain ⟨w, hw, hbw⟩ := this
  have hwv : w = v := by simpa using hw.symm
  rw [hwv] at hbw
  dsimp only at hbw
  have hB' : Bk v (setVarHOLFinite n v s) := by
    have := hBk v _ (setVarHOLFinite n v s).locals (setVarHOLFinite n v s).clock hbw
    exact this
  exact ⟨hB', hLK s v hp.2⟩

end InitECandidate.Solver.MemSafe.PtC
