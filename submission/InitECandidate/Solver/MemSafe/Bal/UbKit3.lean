import InitECandidate.Solver.MemSafe.Bal.UbKit2

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

/-! ## Environment inclusion and the stage context -/

def EnvLe (Eo E : Env) : Prop := ∀ x w, Eo x = some w → E x = some w

theorem envLe_refl (E : Env) : EnvLe E E := fun _ _ h => h

theorem envLe_set {Eo E : Env} (h : EnvLe Eo E) {n : MlS} (hn : Eo n = none) (v : ValueHOL 64) :
    EnvLe Eo (E.set n v) := by
  intro x w hx
  have hne : x ≠ n := fun e => by rw [e, hn] at hx; cases hx
  rw [env_set_ne E v hne]
  exact h x w hx

def Env.erase (E : Env) (x : MlS) : Env := fun y => if y = x then none else E y

theorem env_erase_ne (E : Env) {x y : MlS} (h : y ≠ x) : (E.erase x) y = E y := by simp [Env.erase, h]
theorem env_erase_self (E : Env) (x : MlS) : (E.erase x) x = none := by simp [Env.erase]

theorem envLe_erase {Eo E : Env} (h : EnvLe Eo E) {n : MlS} (hn : Eo n = none) : EnvLe Eo (E.erase n) := by
  intro x w hx
  have hne : x ≠ n := fun e => by rw [e, hn] at hx; cases hx
  rw [env_erase_ne E hne]
  exact h x w hx

theorem le_mono {E E' : Env} {F F' : Gam → Prop} (hE : EnvLe E' E) (hF : ∀ Γ, F Γ → F' Γ) {Γ : Gam} {t : State σ}
    (h : LE E F Γ t) : LE E' F' Γ t := ⟨fun x w hx => h.1 x w (hE x w hx), hF Γ h.2⟩

theorem rr_mono {cs : List Cap} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {L L' : Gam → State σ → Prop}
    (h : ∀ Γ t, L Γ t → L' Γ t) {r : Option (PanSemResultExact 64)} {t : State σ}
    (hr : RR cs Γ0 s0 p0 L r t) : RR cs Γ0 s0 p0 L' r t := by
  rcases hr with ⟨e, Γ, hP⟩ | hq
  · exact Or.inl ⟨e, Γ, hP.1, h Γ t hP.2⟩
  · exact Or.inr hq

theorem hpre_le {cs : List Cap} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {E E' : Env} {F F' : Gam → Prop}
    (hE : EnvLe E' E) (hF : ∀ Γ, F Γ → F' Γ) {c : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (h : HoareG σ guestCtx (PE cs Γ0 s0 p0 E' F') c Q) : HoareG σ guestCtx (PE cs Γ0 s0 p0 E F) c Q :=
  hoareG_pre h fun s _ ⟨Γ, hIV, hl⟩ => ⟨Γ, hIV, le_mono hE hF hl⟩

/-- The names bound in the body. -/
def ubNames : List MlS :=
  [nm "addr", nm "post", nm "pre", nm "pre_bal", nm "pre_nonce", nm "pre_ch", nm "post_bal", nm "post_nonce",
    nm "post_ch", nm "eq", nm "code"]

/-- The names bound in the storage body. -/
def ubNames2 : List MlS := [nm "pre_v", nm "post_v", nm "eq2"]

/-- The names bound in the storage loops. -/
def ubNames3 : List MlS := [nm "inner", nm "icap", nm "j", nm "e", nm "pre_v", nm "post_v", nm "eq2"]

/-- Stage context: the post environment `Eo` / fact `Fo` are below the current `E` / `F`, and bind none of
the names of the body. -/
structure St (N : List MlS) (Eo : Env) (Fo : Gam → Prop) (E : Env) (F : Gam → Prop) : Prop where
  hE : EnvLe Eo E
  hF : ∀ Γ, F Γ → Fo Γ
  hN : ∀ x ∈ N, Eo x = none

theorem St.set {N Eo E F Fo} (h : St N Eo Fo E F) {n : MlS} (hn : n ∈ N) (v : ValueHOL 64) :
    St N Eo Fo (E.set n v) F := ⟨envLe_set h.hE (h.hN n hn) v, h.hF, h.hN⟩

theorem St.erase {N Eo E F Fo} (h : St N Eo Fo E F) {n : MlS} (hn : n ∈ N) : St N Eo Fo (E.erase n) F :=
  ⟨envLe_erase h.hE (h.hN n hn), h.hF, h.hN⟩

theorem St.fact {N Eo E F Fo} (h : St N Eo Fo E F) {F' : Gam → Prop} (hF : ∀ Γ, F' Γ → F Γ) : St N Eo Fo E F' :=
  ⟨h.hE, fun Γ h' => h.hF Γ (hF Γ h'), h.hN⟩

theorem St.rr {N Eo E F Fo} (h : St N Eo Fo E F) {cs : List Cap} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}
    {r : Option (PanSemResultExact 64)} {t : State σ} (hr : RR cs Γ0 s0 p0 (LE E F) r t) :
    RR cs Γ0 s0 p0 (LE Eo Fo) r t :=
  rr_mono (fun _ _ => le_mono h.hE h.hF) hr

section ubk3
variable {cs : List Cap} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

/-- `var n = e; body` with an untracked value. -/
theorem hdecU (hH : HooksLawful guestC (guestHooksR (σ := σ))) {n : MlS} {sh : ShapeHOL} {e : ExpHOL 64}
    {body : ProgHOL 64} {E Eo : Env} {F Fo : Gam → Prop} (hn : E n = none) (hEo : Eo n = none)
    (hbody : HoareG σ guestCtx (PE cs Γ0 s0 p0 E F) body (RR cs Γ0 s0 p0 (LE Eo Fo))) :
    HoareG σ guestCtx (PE cs Γ0 s0 p0 E F) (.dec n sh e body) (RR cs Γ0 s0 p0 (LE Eo Fo)) := by
  refine hoareG_dec fun s hs hp v hv hsh => ?_
  obtain ⟨Γ, hIV, hLL, hFF⟩ := hp
  refine hoareG_conseq (P := fun t => t = setVarHOLFinite n v s) ?_ (fun _ _ h => h)
    (fun r t _ _ hq => rr_res (L := LE Eo Fo) (fun Γ t o h => le_res hEo h o) hH _ hq)
  refine hoareG_pre hbody (fun t _ ht => ?_)
  subst ht
  refine ⟨Γ, ⟨Struct.trk_congr hH hIV.1 rfl rfl rfl rfl, hIV.2⟩, fun y w hy => ?_, hFF⟩
  have hne : n ≠ y := fun e => by rw [← e, hn] at hy; cases hy
  exact (lk_set_ne _ _ hne).trans (hLL y w hy)

/-- `x = f(args);` for a tracked word local: afterwards `x` is untracked. -/
theorem gstepAD (hH : HooksLawful guestC (guestHooksR (σ := σ)))
    {f : MlS} {sg : Sig} {x : MlS}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW' : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hsum : SumSpecA σ guestCtx guestC (guestHooksR (σ := σ)) f sg Pre PW' Q)
    (hf : (balFns.map Prod.fst).contains f = true) (hsg : ∀ g ∈ guestC.PG, g ∉ sg.gw)
    (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0)
    {args : List (ExpHOL 64)} {E : Env} {F : Gam → Prop} (hF : MonoF F) {w0 : BitVec 64}
    (hx : E x = some (.val (.word w0)))
    (hdata : ∀ Γ s, PI cs Γ0 s0 p0 (LE E F) Γ s → ∀ vs, evs s args = some vs → ∀ callee,
      (∃ p, ptrsOf s = some p ∧ ArgsOK guestC Γ p sg.params vs) ∧
      Pre vs (callEntryStateHOLFinite s callee) Γ ∧
      (∀ a, ArgCells sg.params vs a → WCell guestC Γ a ∨ ¬ p0.Allocated a.toNat ∨ cpw cs Γ0 s0 p0 a) ∧
      (∀ y, ProtCell guestC Γ y → PW' vs (callEntryStateHOLFinite s callee) Γ y → cpw cs Γ0 s0 p0 y)) :
    HoareG σ guestCtx (PE cs Γ0 s0 p0 E F) (.call (some (some (.local, x), none)) f args)
      (RR cs Γ0 s0 p0 (LE (E.erase x) F)) :=
  gstepA hH hsum hf hsg hord0 hL0 (L := LE E F) (Ln := LE (E.erase x) F)
    (fun Γ s hP => ⟨w0, hP.2.1 x _ hx⟩) hdata
    (fun Γ s vs callee w Γ1 st hP hvs hT2 hinfo hq hc => by
      obtain ⟨_, _, _, _, _, hE, _⟩ := hinfo
      refine ⟨fun y v hy => ?_, hF Γ Γ1 hE hP.2.2⟩
      have hne : y ≠ x := fun e => by rw [e, env_erase_self] at hy; cases hy
      rw [env_erase_ne E hne] at hy
      exact (lk_set_ne _ _ (Ne.symm hne)).trans (hP.2.1 y v hy))

/-- Generic callee data for an all-`any` signature. -/
theorem hdata_any {sg : Sig} (hany : ∀ pt ∈ sg.params, pt = PT.any)
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW' : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {vs : List (ValueHOL 64)} (hlen : sg.params.length = vs.length) {Γ : Gam} {s : State σ} {callee : HolFiniteMapExact MlS (ValueHOL 64)}
    (hIV : IV cs Γ0 s0 p0 Γ s) (hpre : Pre vs (callEntryStateHOLFinite s callee) Γ)
    (hpw : ∀ y, ProtCell guestC Γ y → PW' vs (callEntryStateHOLFinite s callee) Γ y → cpw cs Γ0 s0 p0 y) :
    (∃ p, ptrsOf s = some p ∧ ArgsOK guestC Γ p sg.params vs) ∧
      Pre vs (callEntryStateHOLFinite s callee) Γ ∧
      (∀ a, ArgCells sg.params vs a → WCell guestC Γ a ∨ ¬ p0.Allocated a.toNat ∨ cpw cs Γ0 s0 p0 a) ∧
      (∀ y, ProtCell guestC Γ y → PW' vs (callEntryStateHOLFinite s callee) Γ y → cpw cs Γ0 s0 p0 y) := by
  obtain ⟨pT, hpT, -⟩ := id hIV.1
  exact ⟨⟨pT, hpT, argsOK_allAny hany hlen⟩, hpre,
    fun a h => absurd h (argCells_allAny hany), hpw⟩

end ubk3

end InitECandidate.Solver.MemSafe.Bal
