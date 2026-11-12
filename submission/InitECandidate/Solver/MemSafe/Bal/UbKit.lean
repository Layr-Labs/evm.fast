import InitECandidate.Solver.MemSafe.Bal.Merge
import InitECandidate.Solver.MemSafe.Bal.UbCode

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedSectionVars false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Bal
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

/-! ## Value forms of loads and argument lists -/

theorem ev_load4w {s : State σ} {a : ExpHOL 64} {v : ValueHOL 64}
    (h : ev s (.load (.comb [.one, .one, .one, .one]) a) = some v) : ∃ A B C D : BitVec 64, v = wv [A, B, C, D] := by
  simp only [ev, evalHOLExact] at h
  split at h
  · split at h
    · rename_i w hw
      simp only [memLoadHOLExact] at h
      split at h
      · rename_i vals hvals
        simp only [Option.some.injEq] at h
        subst h
        simp only [memLoadsHOLExact] at hvals
        simp only [memLoadHOLExact] at hvals
        split_ifs at hvals <;> simp at hvals
        subst hvals
        obtain ⟨A, hA⟩ : ∃ A, s.memory w = .word A := by cases h : s.memory w; exact ⟨_, rfl⟩
        obtain ⟨B, hB⟩ : ∃ A, s.memory (w + bytesInWordHOL 64) = .word A := by cases h : s.memory (w + bytesInWordHOL 64); exact ⟨_, rfl⟩
        obtain ⟨C, hC⟩ : ∃ A, s.memory (w + bytesInWordHOL 64 + bytesInWordHOL 64) = .word A := by cases h : s.memory (w + bytesInWordHOL 64 + bytesInWordHOL 64); exact ⟨_, rfl⟩
        obtain ⟨D, hD⟩ : ∃ A, s.memory (w + bytesInWordHOL 64 + bytesInWordHOL 64 + bytesInWordHOL 64) = .word A := by cases h : s.memory (w + bytesInWordHOL 64 + bytesInWordHOL 64 + bytesInWordHOL 64); exact ⟨_, rfl⟩
        exact ⟨A, B, C, D, by simp [wv, hA, hB, hC, hD]⟩
      · simp at h
    · simp at h
  · simp at h

theorem ev_load1w {s : State σ} {a : ExpHOL 64} {v : ValueHOL 64}
    (h : ev s (.load .one a) = some v) : ∃ w : BitVec 64, v = .val (.word w) := by
  obtain ⟨w, -, -, rfl⟩ := ev_load_one h
  obtain ⟨A, hA⟩ : ∃ A, s.memory w = .word A := by cases h : s.memory w; exact ⟨_, rfl⟩
  exact ⟨A, by rw [hA]⟩

theorem evs_cons_mk {s : State σ} {a : ExpHOL 64} {as : List (ExpHOL 64)} {v : ValueHOL 64} {vs : List (ValueHOL 64)}
    (h1 : ev s a = some v) (h2 : evs s as = some vs) : evs s (a :: as) = some (v :: vs) := by
  simp only [evs, ev, evalListHOLExact] at *
  rw [h1, h2]

/-- two evaluations of the same list agree -/
theorem evs_det {s : State σ} {as : List (ExpHOL 64)} {vs vs' : List (ValueHOL 64)}
    (h : evs s as = some vs) (h' : evs s as = some vs') : vs = vs' := by
  rw [h] at h'; exact Option.some.inj h'

/-! ## Local environments -/

abbrev Env := MlS → Option (ValueHOL 64)

def Env.set (E : Env) (x : MlS) (v : ValueHOL 64) : Env := fun y => if y = x then some v else E y

theorem env_set_self (E : Env) (x : MlS) (v : ValueHOL 64) : (E.set x v) x = some v := by simp [Env.set]
theorem env_set_ne (E : Env) {x y : MlS} (v : ValueHOL 64) (h : y ≠ x) : (E.set x v) y = E y := by simp [Env.set, h]

/-- A predicate on typings that survives extension. -/
def MonoF (F : Gam → Prop) : Prop := ∀ Γ Γ1, Ext Γ Γ1 → F Γ → F Γ1

/-- The tracked locals of `E` have their values, and the typing fact `F` holds. -/
def LE (E : Env) (F : Gam → Prop) (Γ : Gam) (t : State σ) : Prop :=
  (∀ x w, E x = some w → t.locals.lookup x = some w) ∧ F Γ

abbrev PE (cs : List Cap) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (E : Env) (F : Gam → Prop) (s : State σ) : Prop :=
  ∃ Γ, PI cs Γ0 s0 p0 (LE E F) Γ s

theorem le_ev {E : Env} {F : Gam → Prop} {Γ : Gam} {t : State σ} (h : LE E F Γ t) {x : MlS} {w : BitVec 64}
    (hx : E x = some (.val (.word w))) : ev t (lv x) = some (.val (.word w)) :=
  Mpt.Leaves.ev_lv' (h.1 x _ hx)

theorem le_ev' {E : Env} {F : Gam → Prop} {Γ : Gam} {t : State σ} (h : LE E F Γ t) {x : MlS} {v : ValueHOL 64}
    (hx : E x = some v) : ev t (lv x) = some v := by rw [ev_lv]; exact h.1 x _ hx

theorem le_set {E : Env} {F : Gam → Prop} {Γ : Gam} {t : State σ} (h : LE E F Γ t) (x : MlS) (v : ValueHOL 64) :
    ∀ y w, (E.set x v) y = some w → (setVarHOLFinite x v t).locals.lookup y = some w := by
  intro y w hy
  by_cases hyx : y = x
  · subst hyx
    rw [env_set_self] at hy
    cases hy
    exact lk_set_self _ _ _
  · rw [env_set_ne E v hyx] at hy
    exact (lk_set_ne _ _ (Ne.symm hyx)).trans (h.1 y w hy)

theorem le_res {Eo : Env} {Fo : Gam → Prop} {n : MlS} (hEo : Eo n = none) {Γ : Gam} {t : State σ}
    (h : LE Eo Fo Γ t) (o : Option (ValueHOL 64)) : LE Eo Fo Γ { t with locals := t.locals.resVarEq (n, o) } := by
  refine ⟨fun x w hx => ?_, h.2⟩
  have hne : x ≠ n := fun e => by rw [e, hEo] at hx; cases hx
  show (t.locals.resVarEq (n, o)).lookup x = some w
  rw [lk_resVar_ne _ _ _ _ hne]
  exact h.1 x w hx

theorem hexL {α : Type} {cs : List Cap} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {L : α → Gam → State σ → Prop}
    {c : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (h : ∀ a, HoareG σ guestCtx (fun s => ∃ Γ, PI cs Γ0 s0 p0 (L a) Γ s) c Q) :
    HoareG σ guestCtx (fun s => ∃ Γ, PI cs Γ0 s0 p0 (fun Γ t => ∃ a, L a Γ t) Γ s) c Q :=
  fun s hs ⟨Γ, hIV, a, hL⟩ => h a s hs ⟨Γ, hIV, hL⟩

section ubk
variable {cs : List Cap} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

/-- `f(args);` keeping the environment and typing facts. -/
theorem gstepE (hH : HooksLawful guestC (guestHooksR (σ := σ)))
    {f : MlS} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW' : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hsum : SumSpecA σ guestCtx guestC (guestHooksR (σ := σ)) f sg Pre PW' Q)
    (hf : (balFns.map Prod.fst).contains f = true) (hsg : ∀ g ∈ guestC.PG, g ∉ sg.gw)
    (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0)
    {args : List (ExpHOL 64)} {E : Env} {F : Gam → Prop} (hF : MonoF F)
    (hdata : ∀ Γ s, PI cs Γ0 s0 p0 (LE E F) Γ s → ∀ vs, evs s args = some vs → ∀ callee,
      (∃ p, ptrsOf s = some p ∧ ArgsOK guestC Γ p sg.params vs) ∧
      Pre vs (callEntryStateHOLFinite s callee) Γ ∧
      (∀ a, ArgCells sg.params vs a → WCell guestC Γ a ∨ ¬ p0.Allocated a.toNat ∨ cpw cs Γ0 s0 p0 a) ∧
      (∀ y, ProtCell guestC Γ y → PW' vs (callEntryStateHOLFinite s callee) Γ y → cpw cs Γ0 s0 p0 y)) :
    HoareG σ guestCtx (PE cs Γ0 s0 p0 E F) (.call (some (none, none)) f args)
      (RR cs Γ0 s0 p0 (LE E F)) :=
  gstepD hH hsum hf hsg hord0 hL0 (L := LE E F) (Ln := LE E F) hdata
    (fun Γ s vs callee v Γ1 st hP hvs hT2 hinfo hq => by
      obtain ⟨_, _, _, _, _, hE, _⟩ := hinfo
      exact ⟨fun x w h => hP.2.1 x w h, hF Γ Γ1 hE hP.2.2⟩)

/-- `x = f(args);` for a local `x` that is not tracked. -/
theorem gstepAE (hH : HooksLawful guestC (guestHooksR (σ := σ)))
    {f : MlS} {sg : Sig} {x : MlS}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW' : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hsum : SumSpecA σ guestCtx guestC (guestHooksR (σ := σ)) f sg Pre PW' Q)
    (hf : (balFns.map Prod.fst).contains f = true) (hsg : ∀ g ∈ guestC.PG, g ∉ sg.gw)
    (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0)
    {args : List (ExpHOL 64)} {E : Env} {F : Gam → Prop} (hF : MonoF F) (hx : E x = none)
    (hold : ∀ Γ s, PI cs Γ0 s0 p0 (LE E F) Γ s → ∃ w0, s.locals.lookup x = some (.val (.word w0)))
    (hdata : ∀ Γ s, PI cs Γ0 s0 p0 (LE E F) Γ s → ∀ vs, evs s args = some vs → ∀ callee,
      (∃ p, ptrsOf s = some p ∧ ArgsOK guestC Γ p sg.params vs) ∧
      Pre vs (callEntryStateHOLFinite s callee) Γ ∧
      (∀ a, ArgCells sg.params vs a → WCell guestC Γ a ∨ ¬ p0.Allocated a.toNat ∨ cpw cs Γ0 s0 p0 a) ∧
      (∀ y, ProtCell guestC Γ y → PW' vs (callEntryStateHOLFinite s callee) Γ y → cpw cs Γ0 s0 p0 y)) :
    HoareG σ guestCtx (PE cs Γ0 s0 p0 E F) (.call (some (some (.local, x), none)) f args)
      (RR cs Γ0 s0 p0 (LE E F)) :=
  gstepA hH hsum hf hsg hord0 hL0 (L := LE E F) (Ln := LE E F) hold hdata
    (fun Γ s vs callee w Γ1 st hP hvs hT2 hinfo hq hc => by
      obtain ⟨_, _, _, _, _, hE, _⟩ := hinfo
      refine ⟨fun y v hy => ?_, hF Γ Γ1 hE hP.2.2⟩
      have hne : x ≠ y := fun e => by rw [← e, hx] at hy; cases hy
      exact (lk_set_ne _ _ hne).trans (hP.2.1 y v hy))

/-- `var rn = f(args); k`: the result is tracked with the fact `G`. -/
theorem gdecCallE (hH : HooksLawful guestC (guestHooksR (σ := σ)))
    {f : MlS} {sg : Sig} {rn : MlS} {sh : ShapeHOL} {k : ProgHOL 64}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW' : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hsum : SumSpecA σ guestCtx guestC (guestHooksR (σ := σ)) f sg Pre PW' Q)
    (hf : (balFns.map Prod.fst).contains f = true) (hsg : ∀ g ∈ guestC.PG, g ∉ sg.gw)
    (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0)
    {args : List (ExpHOL 64)} {E Eo : Env} {F Fo : Gam → Prop} (G : ValueHOL 64 → Gam → Prop)
    (hF : MonoF F) (hG : ∀ v, MonoF (G v)) (hEo : Eo rn = none)
    (hdata : ∀ Γ s, PI cs Γ0 s0 p0 (LE E F) Γ s → ∀ vs, evs s args = some vs → ∀ callee,
      (∃ p, ptrsOf s = some p ∧ ArgsOK guestC Γ p sg.params vs) ∧
      Pre vs (callEntryStateHOLFinite s callee) Γ ∧
      (∀ a, ArgCells sg.params vs a → WCell guestC Γ a ∨ ¬ p0.Allocated a.toNat ∨ cpw cs Γ0 s0 p0 a) ∧
      (∀ y, ProtCell guestC Γ y → PW' vs (callEntryStateHOLFinite s callee) Γ y → cpw cs Γ0 s0 p0 y))
    (hQ : ∀ Γ s vs callee v Γ1 (st : State σ), PI cs Γ0 s0 p0 (LE E F) Γ s → evs s args = some vs →
      shapeEqHOL (shapeOfHOLExact v) sh = true → TrkC cs Γ0 s0 p0 Γ1 st →
      (∃ p p', ptrsOf s = some p ∧ ptrsOf st = some p' ∧ p.Mono p' ∧ Ext Γ Γ1 ∧ NewFresh Γ Γ1 p p') →
      Q vs (callEntryStateHOLFinite s callee) Γ (.returned v) st Γ1 → G v Γ1)
    (hk : ∀ v, HoareG σ guestCtx (PE cs Γ0 s0 p0 (E.set rn v) (fun Γ => F Γ ∧ G v Γ)) k
      (RR cs Γ0 s0 p0 (LE Eo Fo))) :
    HoareG σ guestCtx (PE cs Γ0 s0 p0 E F) (.decCall rn sh f args k) (RR cs Γ0 s0 p0 (LE Eo Fo)) := by
  refine gstepDec2 hH hsum hf hsg hord0 hL0 (L := LE E F)
    (Ln := fun Γ t => ∃ v, LE (E.set rn v) (fun Γ => F Γ ∧ G v Γ) Γ t) (L2 := LE Eo Fo) hdata ?_
    (fun Γ t o h => le_res hEo h o) (hexL hk)
  intro Γ s vs callee v Γ1 st hP hvs hsh hT2 hinfo hq
  obtain ⟨_, _, _, _, _, hE, _⟩ := hinfo
  refine ⟨v, ?_, hF Γ Γ1 hE hP.2.2, hQ Γ s vs callee v Γ1 st hP hvs hsh hT2 ⟨_, _, ‹_›, ‹_›, ‹_›, hE, ‹_›⟩ hq⟩
  intro y w hy
  by_cases hyx : y = rn
  · subst hyx
    rw [env_set_self] at hy
    cases hy
    exact lk_set_self _ _ _
  · rw [env_set_ne E v hyx] at hy
    exact (lk_set_ne _ _ (Ne.symm hyx)).trans (hP.2.1 y w hy)

/-- `var n = e; body` with the value fact `G`. -/
theorem hdecE (hH : HooksLawful guestC (guestHooksR (σ := σ))) {n : MlS} {sh : ShapeHOL} {e : ExpHOL 64}
    {body : ProgHOL 64} {E Eo : Env} {F Fo : Gam → Prop} (G : ValueHOL 64 → Prop) (hEo : Eo n = none)
    (hfact : ∀ Γ s v, PI cs Γ0 s0 p0 (LE E F) Γ s → ev s e = some v → G v)
    (hbody : ∀ v, G v → HoareG σ guestCtx (PE cs Γ0 s0 p0 (E.set n v) F) body (RR cs Γ0 s0 p0 (LE Eo Fo))) :
    HoareG σ guestCtx (PE cs Γ0 s0 p0 E F) (.dec n sh e body) (RR cs Γ0 s0 p0 (LE Eo Fo)) := by
  refine hoareG_dec fun s hs hp v hv hsh => ?_
  obtain ⟨Γ, hIV, hLL, hFF⟩ := hp
  refine hoareG_conseq (P := fun t => t = setVarHOLFinite n v s) ?_ (fun _ _ h => h)
    (fun r t _ _ hq => rr_res (L := LE Eo Fo) (fun Γ t o h => le_res hEo h o) hH _ hq)
  refine hoareG_pre (hbody v (hfact Γ s v ⟨hIV, hLL, hFF⟩ hv)) (fun t _ ht => ?_)
  subst ht
  exact ⟨Γ, ⟨Struct.trk_congr hH hIV.1 rfl rfl rfl rfl, hIV.2⟩, le_set ⟨hLL, hFF⟩ n v, hFF⟩

/-- `n = e;` for a tracked local: the new value is tracked with the fact `G`. -/
theorem hassignT (hH : HooksLawful guestC (guestHooksR (σ := σ))) {n : MlS} {e : ExpHOL 64} {E : Env}
    {F : Gam → Prop} (G : ValueHOL 64 → Prop)
    (hfact : ∀ Γ s v, PI cs Γ0 s0 p0 (LE E F) Γ s → ev s e = some v → G v) :
    HoareG σ guestCtx (PE cs Γ0 s0 p0 E F) (.assign .local n e)
      (RR cs Γ0 s0 p0 (fun Γ t => ∃ v, G v ∧ LE (E.set n v) F Γ t)) := by
  refine hoareG_assignK fun s hs ⟨Γ, hIV, hLL, hFF⟩ v hv hvalid => ?_
  exact Or.inl ⟨rfl, Γ, ⟨Struct.trk_congr hH hIV.1 rfl rfl rfl rfl, hIV.2⟩, v,
    hfact Γ s v ⟨hIV, hLL, hFF⟩ hv, le_set ⟨hLL, hFF⟩ n v, hFF⟩

/-- `n = e;` for an untracked local. -/
theorem hassignU (hH : HooksLawful guestC (guestHooksR (σ := σ))) {n : MlS} {e : ExpHOL 64} {E : Env}
    {F : Gam → Prop} (hn : E n = none) :
    HoareG σ guestCtx (PE cs Γ0 s0 p0 E F) (.assign .local n e) (RR cs Γ0 s0 p0 (LE E F)) := by
  refine hoareG_assignK fun s hs ⟨Γ, hIV, hLL, hFF⟩ v hv hvalid => ?_
  refine Or.inl ⟨rfl, Γ, ⟨Struct.trk_congr hH hIV.1 rfl rfl rfl rfl, hIV.2⟩, fun y w hy => ?_, hFF⟩
  have hne : n ≠ y := fun e => by rw [← e, hn] at hy; cases hy
  exact (lk_set_ne _ _ hne).trans (hLL y w hy)

end ubk

end InitECandidate.Solver.MemSafe.Bal
