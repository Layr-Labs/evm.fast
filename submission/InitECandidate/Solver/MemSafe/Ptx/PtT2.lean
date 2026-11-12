import InitECandidate.Solver.MemSafe.Ptx.PtT1
import InitECandidate.Solver.MemSafe.Ptx.PtTab2
import InitECandidate.Solver.MemSafe.Ptx.PtA7
import InitECandidate.Solver.MemSafe.Ptx.PtA5

/-!
# F3g: the combinators of the tail (`PAg`), calls (`TCallOK`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

/-- A state predicate insensitive to locals and the clock. -/
def BLoc (B : State σ → Prop) : Prop := ∀ (s : State σ) (l : Locs) (c : Nat), B s → B { s with locals := l, clock := c }

theorem bloc_tl (A : TlA σ) (ref : BitVec 64 → BitVec 64) (Z : BitVec 64 → Prop) {O : List Obj} : BLoc (TL A ref Z O) :=
  fun s l c ⟨Γ, p, h⟩ => ⟨Γ, p, tl_loc h l c⟩

section comb
variable {B : State σ → Prop} {En : Env} {QT : Option (PanSemResultExact 64) → State σ → Prop}

theorem pag_set (hB : BLoc B) {u : State σ} (h : PAg B En u) (n : MlS) (v : ValueHOL 64) :
    PAg B (En.set n v) (setVarHOLFinite n v u) := ⟨hB _ _ _ h.1, lke_set h.2 n v⟩

theorem pag_set_other (hB : BLoc B) {u : State σ} (h : PAg B En u) {n : MlS} (hn : En n = none)
    (v : ValueHOL 64) : PAg B En (setVarHOLFinite n v u) := ⟨hB _ _ _ h.1, lke_set_other h.2 hn v⟩

theorem pag_mono {En' : Env} {B' : State σ → Prop} {u : State σ} (h : PAg B En u)
    (he : ∀ x v, En' x = some v → En x = some v) (hb : ∀ s, B s → B' s) : PAg B' En' u :=
  ⟨hb _ h.1, lke_mono h.2 he⟩

/-- `var n = e; body` for an untracked `n`. -/
theorem hdecF_g (hB : BLoc B) {n : MlS} (hQT : ResIns n QT) {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64}
    (hn : En n = none) (hk : Hoare σ guestCtx (PAg B En) body QT) :
    Hoare σ guestCtx (PAg B En) (.dec n sh e body) QT :=
  hdecK hQT fun s hs hP v hv hsh => hoare_pre hk fun t _ ht => by subst ht; exact pag_set_other hB hP hn v

/-- `var n = e; body` where `e` evaluates to the word `w`. -/
theorem hdecT_g (hB : BLoc B) {n : MlS} (hQT : ResIns n QT) {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64}
    {w : BitVec 64} (he : ∀ s : State σ, PAg B En s → ∀ v, ev s e = some v → v = .val (.word w))
    (hk : Hoare σ guestCtx (PAg B (En.set n (.val (.word w)))) body QT) :
    Hoare σ guestCtx (PAg B En) (.dec n sh e body) QT :=
  hdecK hQT fun s hs hP v hv hsh => by
    have := he s hP v hv
    subst this
    exact hoare_pre hk fun t _ ht => by subst ht; exact pag_set hB hP n _

/-- `var n = e; body` for any word value. -/
theorem hdecW_g (hB : BLoc B) {n : MlS} (hQT : ResIns n QT) {e : ExpHOL 64} {body : ProgHOL 64}
    (hk : ∀ w : BitVec 64, Hoare σ guestCtx (PAg B (En.set n (.val (.word w)))) body QT) :
    Hoare σ guestCtx (PAg B En) (.dec n .one e body) QT :=
  hdecK hQT fun s hs hP v hv hsh => by
    obtain ⟨w, rfl⟩ := val_of_shapeEq_one hsh
    exact hoare_pre (hk w) fun t _ ht => by subst ht; exact pag_set hB hP n _

/-- `n = e` for an untracked local. -/
theorem hassignF_g (hB : BLoc B) {n : MlS} {e : ExpHOL 64} (hn : En n = none) :
    HN (PAg B En) (.assign .local n e) (PAg B En) :=
  hoare_assign fun s hs hP v hv _ => ⟨rfl, pag_set_other hB hP hn v⟩

/-- `n = e` where `e` evaluates to the word `w'`. -/
theorem hassignT_g (hB : BLoc B) {n : MlS} {e : ExpHOL 64} {w' : BitVec 64}
    (he : ∀ s : State σ, PAg B En s → ∀ v, ev s e = some v → v = .val (.word w')) :
    HN (PAg B En) (.assign .local n e) (PAg B (En.set n (.val (.word w')))) :=
  hoare_assign fun s hs hP v hv _ => by
    have := he s hP v hv
    subst this
    exact ⟨rfl, pag_set hB hP n _⟩

end comb

section call
variable {A : TlA σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {u : State σ} {Γ : Gam} {p : Ptrs}

/-- The tracked cells are no state-object cells. -/
theorem tl_z_not_st (h : TlS A ref Z O u Γ p) {a : BitVec 64} (ha : Z a) : ¬ StCell guestSt Γ a := by
  obtain ⟨o, ho, -, hst, k, hk, hp, rfl⟩ := h.hZ a ha
  rintro ⟨o', ho', hs', k', hk', he⟩
  obtain ⟨rfl, -⟩ := cell_inj (tl_ord h) (tl_layout h) ho ho' hk hk' he
  rw [hst] at hs'; cases hs'

theorem preT {cs : List Cap} (hcs : CsOK cs) (h : TlS A ref Z O u Γ p) (callee : Locs) :
    ReqOK cs (callEntryStateHOLFinite u callee) Γ :=
  reqOK_jrs hcs.gl ((G_locFree Hooks.guestHooksR_lawful u _ _).mpr h.hG) (jrNZ_congr (s := u) rfl h.jr)

/-- **The core of a call to a summarized state-object function** from a `TlS` state. -/
theorem tl_call_core {sg : Sig} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PWx : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    {vs : List (ValueHOL 64)} {s st : State σ} {callee : Locs} {v : ValueHOL 64} {Γ : Gam} {p : Ptrs}
    (hR : SumRelX guestC (HR σ) sg Pre (fun vs s Γ a => ProtCell guestC Γ a ∧ PWx vs s Γ a) Q vs
      (callEntryStateHOLFinite s callee) (.returned v) st)
    (hgl : ∀ g, cW.contains g = false → st.globals.lookup g = s.globals.lookup g)
    (hgw : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hJo : JrOut sg.gw)
    (hPW : ∀ vs s Γ a, PWx vs s Γ a → StCell guestSt Γ a)
    (hr : TlS A ref Z O s Γ p) (hargs : ArgsOK guestC Γ p sg.params vs)
    (hargsY : ∀ a, ArgCells sg.params vs a → ¬ A.Y a)
    (hpre : Pre vs (callEntryStateHOLFinite s callee) Γ) :
    ∃ Γ' p', ∃ _ : SumCore guestC (HR σ) sg
        (fun a => ProtCell guestC Γ a ∧ PWx vs (callEntryStateHOLFinite s callee) Γ a)
        Γ (callEntryStateHOLFinite s callee) vs (.returned v) st Γ' p p',
      TlS A ref Z O { st with locals := s.locals } Γ' p' ∧
      Q vs (callEntryStateHOLFinite s callee) Γ (.returned v) st Γ' := by
  have hre : TlS A ref Z O (callEntryStateHOLFinite s callee) Γ p := tl_loc hr callee (s.clock - 1)
  obtain ⟨Γ', p0', p', hc, hq⟩ := hR (by simp [Good]) (not_abortive_ret v) Γ hre.hG
    ⟨p, hre.hp, hargs⟩ hpre
  obtain rfl : p = p0' := (Option.some.inj (hc.1.symm.trans hre.hp)).symm
  have hrun := tl_core hre hc (fun a ha => argCells_not_prot (tl_ord hr) (tl_layout hr) hargs ha) hargsY
    (fun a ha hpw => tl_z_not_st hr ha (hPW _ _ Γ a hpw)) hgw hJo (hgl)
  exact ⟨Γ', p', hc, tl_loc hrun s.locals st.clock, hq⟩

/-- `f(args)` (result dropped) for a table call with a capability summary. -/
theorem hn_callT {En : Env} {f : MlS} {sg : Sig} {cs : List Cap} {args : List (ExpHOL 64)}
    (hf : CSumm σ guestCtx guestC (HR σ) f sg cs) (hcs : CsOK cs)
    (hgw : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hjo : JrOut sg.gw) (hfin : ptAllNames.contains f = true)
    (hargs : ∀ s : State σ, PAg (TL A ref Z O) En s → ∀ vs, evs s args = some vs → ∀ Γ p, TlS A ref Z O s Γ p →
      ArgsOK guestC Γ p sg.params vs)
    (hargsY : ∀ s : State σ, PAg (TL A ref Z O) En s → ∀ vs, evs s args = some vs → ∀ a, ArgCells sg.params vs a → ¬ A.Y a) :
    HN (PAg (TL A ref Z O) En) (.call (some (none, none)) f args) (PAg (TL A ref Z O) En) := by
  refine hoare_callD ((sumSpecA_relX hf).and (funSpec_pt_gw_all guestCtx_code hfin)) ?_
  intro s hs hpa vs hvs callee v st ⟨hR, hgl⟩ hst
  obtain ⟨⟨Γ, p, hr⟩, hlk⟩ := hpa
  obtain ⟨Γ', p', hc, hrun, -⟩ := tl_call_core hR hgl hgw hjo (fun _ _ Γ a hw => capPW_st hcs.st hw) hr
    (hargs s ⟨⟨Γ, p, hr⟩, hlk⟩ vs hvs Γ p hr) (hargsY s ⟨⟨Γ, p, hr⟩, hlk⟩ vs hvs) (preT hcs hr callee)
  exact ⟨rfl, ⟨Γ', p', hrun⟩, hlk⟩

/-- `var rn = f(args); k` for a table call with a capability summary (no new facts). -/
theorem hdecCallT {En : Env} {f : MlS} {sg : Sig} {cs : List Cap} {args : List (ExpHOL 64)} {rn : MlS}
    {sh : ShapeHOL} {k : ProgHOL 64} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hQT : ResIns rn QT) (hf : CSumm σ guestCtx guestC (HR σ) f sg cs) (hcs : CsOK cs)
    (hgw : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hjo : JrOut sg.gw) (hfin : ptAllNames.contains f = true)
    (hargs : ∀ s : State σ, PAg (TL A ref Z O) En s → ∀ vs, evs s args = some vs → ∀ Γ p, TlS A ref Z O s Γ p →
      ArgsOK guestC Γ p sg.params vs)
    (hargsY : ∀ s : State σ, PAg (TL A ref Z O) En s → ∀ vs, evs s args = some vs → ∀ a, ArgCells sg.params vs a → ¬ A.Y a)
    (hk : ∀ v, shapeEqHOL (shapeOfHOLExact v) sh = true →
      Hoare σ guestCtx (PAg (TL A ref Z O) (En.set rn v)) k QT) :
    Hoare σ guestCtx (PAg (TL A ref Z O) En) (.decCall rn sh f args k) QT := by
  refine hdecCallK hQT ((sumSpecA_relX hf).and (funSpec_pt_gw_all guestCtx_code hfin)) ?_
  intro s hs hpa vs hvs callee v st ⟨hR, hgl⟩ hst hsh
  obtain ⟨⟨Γ, p, hr⟩, hlk⟩ := hpa
  obtain ⟨Γ', p', hc, hrun, -⟩ := tl_call_core hR hgl hgw hjo (fun _ _ Γ a hw => capPW_st hcs.st hw) hr
    (hargs s ⟨⟨Γ, p, hr⟩, hlk⟩ vs hvs Γ p hr) (hargsY s ⟨⟨Γ, p, hr⟩, hlk⟩ vs hvs) (preT hcs hr callee)
  refine hoare_pre (hk v hsh) ?_
  intro t _ ht
  subst ht
  exact ⟨⟨Γ', p', tl_set hrun rn _⟩, lke_set (lke_restore hlk) rn v⟩

end call

end InitECandidate.Solver.MemSafe.Ptx
