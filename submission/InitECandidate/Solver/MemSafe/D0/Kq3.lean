import InitECandidate.Solver.MemSafe.D0.Kq2
import InitECandidate.Solver.MemSafe.D0.StoreB
import InitECandidate.Solver.MemSafe.D0.Gas

/-!
# `KP` steps with a post that knows an abnormal end is `Abn` (for loop bodies)

`PSn K L`: a normal end with `K` and the locals `L`, or an abnormal end (`Abn`: an exception or a
final FFI event) with `K` when non-abortive. `hoareG_while` needs that the body never `break`s /
`continue`s. The leaves: calls (`hoareG_kpCallDn`, `hoareG_kpDecCallTn`), the stores
(`hoareG_kpStMsgN`, `hoareG_kpStEvN`, `hoareG_kpStSpill0N`, `hoareG_kpStByteN`) and the gas
charges (`hoareG_kp_chargeN`, `hoareG_kp_csgN`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.D0
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

variable {σ : Type} {X : Ctx 64}

def PSn (K : State σ → Prop) (L : Locs) (ro : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  (ro = none ∧ K t ∧ t.locals = L) ∨ (∃ r, ro = some r ∧ Abn r ∧ (¬ Abortive r → K t))

section
variable {H : Hooks σ}

/-- **`f(args);` from a `KP` state** with the post `PSn` (an abnormal end is `Abn`). -/
theorem hoareG_kpCallDn (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} {Γ0 : Gam}
    {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame}
    {mg : BitVec 64} (hfs : fs = (e, c) :: rest) {f : MlS} {args : List (ExpHOL 64)} {sg : Sig}
    {ks : List Nat} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hspec : SumSpecA σ X guestC H f sg Pre PW Q) (hkf : KeepsFp σ X f)
    (hsub : ∀ g, g ∈ sg.gw → g ∈ gw) (hgwE : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hgJ : JrOut sg.gw)
    (hks : ∀ k ∈ ks, k ∈ gasKs) {u0 : State σ} (hu : KP H gw Γ0 s0 p0 fs e mg u0)
    (hA : ∀ vs, evs u0 args = some vs → ∀ Γ1 p1, RunT guestC H gw Γ0 s0 Γ1 u0 p0 p1 →
      ptrsOf u0 = some p1 → G guestC H Γ1 u0 →
      ChainL guestC tEV tCK Γ1 u0 fs → ChainE GP GR Γ1 u0 fs →
      ArgsOK guestC Γ1 p1 sg.params vs ∧ ∀ callee, Pre vs (callEntryStateHOLFinite u0 callee) Γ1)
    (hpw : ∀ vs callee Γ1 a, G guestC H Γ1 u0 → ProtCell guestC Γ1 a →
      PW vs (callEntryStateHOLFinite u0 callee) Γ1 a →
      PWtopM tEV tCK ks vs (callEntryStateHOLFinite u0 callee) Γ1 a)
    (hgas : ks = [] ∨ ∀ vs callee Γ1 r st Γ2, Q vs (callEntryStateHOLFinite u0 callee) Γ1 r st Γ2 →
      (fld st.memory e 64).toNat + (fld st.memory e 192).toNat ≤
        (fld u0.memory e 64).toNat + (fld u0.memory e 192).toNat) :
    HoareG σ X (fun t => t = u0) (callD f args) (PSn (KP H gw Γ0 s0 p0 fs e mg) u0.locals) := by
  have hH := hF.hooks
  have key : ∀ vs, evs u0 args = some vs → ∀ callee r st,
      SumRelX guestC H sg Pre (fun vs s Γ a => ProtCell guestC Γ a ∧ PW vs s Γ a) Q vs
        (callEntryStateHOLFinite u0 callee) r st →
      (Good (some r) → ¬ Abortive r →
        st.globals.lookup gFrame = (callEntryStateHOLFinite u0 callee).globals.lookup gFrame) →
      Good (some r) → ¬ Abortive r → KP H gw Γ0 s0 p0 fs e mg st := by
    intro vs hvs callee r st hR hfk hg hna
    exact (kp_stepQ hF hfs hsub hgwE hgJ hks hu hR (hfk hg hna) hg hna
      (fun Γ1 p1 hr hp hG hL hE =>
        ⟨(hA vs hvs Γ1 p1 hr hp hG hL hE).1, (hA vs hvs Γ1 p1 hr hp hG hL hE).2 callee⟩)
      (fun Γ1 a hG hp hw => hpw vs callee Γ1 a hG hp hw)
      (hgas.imp id fun h Γ1 Γ2 hq => h vs callee Γ1 r st Γ2 hq)).1
  refine hoareG_callD (FunSpec.and (sumSpecA_relX hspec) hkf) ?_ ?_
  · intro s _ hs vs hvs callee v st ⟨hR, hfk⟩ _
    subst hs
    exact Or.inl ⟨rfl, kp_locals hH (key vs hvs callee _ st hR hfk (by simp [Good])
      (not_abortive_ret v)) _, rfl⟩
  · intro s _ hs vs hvs callee r st ⟨hR, hfk⟩ _ habn
    subst hs
    exact Or.inr ⟨r, rfl, habn, fun hna =>
      kp_locals hH (key vs hvs callee r st hR hfk (good_of_abn habn) hna) _⟩


/-- **`var rn = f(args); k` from a `KP` state**; `k` gets the post at the current typing; `hab` knows the abnormal end is `Abn`. -/
theorem hoareG_kpDecCallTn (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} {Γ0 : Gam}
    {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame}
    {mg : BitVec 64} (hfs : fs = (e, c) :: rest) {f : MlS} {args : List (ExpHOL 64)} {sg : Sig}
    {ks : List Nat} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hspec : SumSpecA σ X guestC H f sg Pre PW Q) (hkf : KeepsFp σ X f)
    (hsub : ∀ g, g ∈ sg.gw → g ∈ gw) (hgwE : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hgJ : JrOut sg.gw)
    (hks : ∀ k ∈ ks, k ∈ gasKs) {u0 : State σ} (hu : KP H gw Γ0 s0 p0 fs e mg u0)
    (hA : ∀ vs, evs u0 args = some vs → ∀ Γ1 p1, RunT guestC H gw Γ0 s0 Γ1 u0 p0 p1 →
      ptrsOf u0 = some p1 → G guestC H Γ1 u0 →
      ChainL guestC tEV tCK Γ1 u0 fs → ChainE GP GR Γ1 u0 fs →
      ArgsOK guestC Γ1 p1 sg.params vs ∧ ∀ callee, Pre vs (callEntryStateHOLFinite u0 callee) Γ1)
    (hpw : ∀ vs callee Γ1 a, G guestC H Γ1 u0 → ProtCell guestC Γ1 a →
      PW vs (callEntryStateHOLFinite u0 callee) Γ1 a →
      PWtopM tEV tCK ks vs (callEntryStateHOLFinite u0 callee) Γ1 a)
    (hgas : ks = [] ∨ ∀ vs callee Γ1 r st Γ2, Q vs (callEntryStateHOLFinite u0 callee) Γ1 r st Γ2 →
      (fld st.memory e 64).toNat + (fld st.memory e 192).toNat ≤
        (fld u0.memory e 64).toNat + (fld u0.memory e 192).toNat)
    {rn : MlS} {sh : ShapeHOL} {k : ProgHOL 64}
    {Qk : Option (PanSemResultExact 64) → State σ → Prop}
    (hk : ∀ vs callee, evs u0 args = some vs → ∀ v (st : State σ),
      KPd H gw Γ0 s0 p0 fs e mg st (fun Γ2 p2 => ∃ Γ1,
        Q vs (callEntryStateHOLFinite u0 callee) Γ1 (.returned v) st Γ2 ∧ ptrsOf st = some p2) →
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      HoareG σ X (fun t => t = setVarHOLFinite rn v { st with locals := u0.locals }) k
        (fun r t => Qk r { t with locals := t.locals.resVarEq (rn, u0.locals.lookup rn) }))
    (hab : ∀ (r : PanSemResultExact 64) (t : State σ), Abn r →
      (¬ Abortive r → KP H gw Γ0 s0 p0 fs e mg t) → Qk (some r) t) :
    HoareG σ X (fun t => t = u0) (.decCall rn sh f args k) Qk := by
  have hH := hF.hooks
  have key : ∀ vs, evs u0 args = some vs → ∀ callee r st,
      SumRelX guestC H sg Pre (fun vs s Γ a => ProtCell guestC Γ a ∧ PW vs s Γ a) Q vs
        (callEntryStateHOLFinite u0 callee) r st →
      (Good (some r) → ¬ Abortive r →
        st.globals.lookup gFrame = (callEntryStateHOLFinite u0 callee).globals.lookup gFrame) →
      Good (some r) → ¬ Abortive r →
      KPd H gw Γ0 s0 p0 fs e mg st (fun Γ2 p2 => ∃ Γ1,
        Q vs (callEntryStateHOLFinite u0 callee) Γ1 r st Γ2 ∧ ptrsOf st = some p2) := by
    intro vs hvs callee r st hR hfk hg hna
    exact kp_stepQT hF hfs hsub hgwE hgJ hks hu hR (hfk hg hna) hg hna
      (fun Γ1 p1 hr hp hG hL hE =>
        ⟨(hA vs hvs Γ1 p1 hr hp hG hL hE).1, (hA vs hvs Γ1 p1 hr hp hG hL hE).2 callee⟩)
      (fun Γ1 a hG hp hw => hpw vs callee Γ1 a hG hp hw)
      (hgas.imp id fun h Γ1 Γ2 hq => h vs callee Γ1 r st Γ2 hq)
  refine hoareG_decCall (FunSpec.and (sumSpecA_relX hspec) hkf) ?_ ?_
  · intro s _ hs vs hvs callee v st ⟨hR, hfk⟩ _ hsh
    subst s
    exact hk vs callee hvs v st (key vs hvs callee _ st hR hfk (by simp [Good]) (not_abortive_ret v)) hsh
  · intro s _ hs vs hvs callee r st ⟨hR, hfk⟩ _ habn
    subst s
    exact hab r _ habn fun hna =>
      kp_locals hH (kp_of_kpd (key vs hvs callee r st hR hfk (good_of_abn habn) hna)) _


end

section kpg
local notation "HJ" => (Hooks.guestHooksR (σ := σ))
variable {gw : List MlS}

/-- **`st msg + off, e1; …`** for `off ∈ {48, 104, 112, 120, 168}`. -/
theorem hoareG_kpStMsgN (hRec : RecNoMsg σ) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}
    (hfs : fs = (e, c) :: rest) {u0 : State σ} (hu : KP HJ gw Γ0 s0 p0 fs e mg u0) {n : MlS}
    (hl : u0.locals.lookup n = some (.val (.word mg))) {off : Nat} {e1 : ExpHOL 64}
    (hoff : off = 48 ∨ off = 104 ∨ off = 112 ∨ off = 120 ∨ off = 168)
    (hx : ∀ v, ev u0 e1 = some v → ∃ x, v = .val (.word x)) :
    HoareG σ X (fun t => t = u0) (.store (.op .add [lv n, cw off]) e1)
      (PSn (KP HJ gw Γ0 s0 p0 fs e mg) u0.locals) := by
  refine hoareG_stL fun s _ hs M v hM hv => ?_
  subst hs
  rw [hl] at hM
  cases hM
  obtain ⟨x, rfl⟩ := hx v hv
  refine ⟨x, rfl, fun _ => Or.inl ⟨rfl, ?_, rfl⟩⟩
  rcases hoff with rfl | rfl | rfl | rfl | rfl
  · exact kp_store_msg hRec hfs hu (k := 6) (by omega) rfl rfl rfl rfl
  · exact kp_store_msg hRec hfs hu (k := 13) (by omega) rfl rfl rfl rfl
  · exact kp_store_msg hRec hfs hu (k := 14) (by omega) rfl rfl rfl rfl
  · exact kp_store_msg hRec hfs hu (k := 15) (by omega) rfl rfl rfl rfl
  · exact kp_store_msg hRec hfs hu (k := 21) (by omega) rfl rfl rfl rfl

/-- **`st ev + off, e1; …`** for `off ∈ {48, 56, 80, 200}` (EV slots `6, 7, 10, 25`). -/
theorem hoareG_kpStEvN {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}
    (hfs : fs = (e, c) :: rest) {u0 : State σ} (hu : KP HJ gw Γ0 s0 p0 fs e mg u0)
    {off : Nat} {e1 : ExpHOL 64} (hoff : off = 48 ∨ off = 56 ∨ off = 80 ∨ off = 200)
    (hx : ∀ v, ev u0 e1 = some v → ∃ x, v = .val (.word x)) :
    HoareG σ X (fun t => t = u0) (stG "ev" off e1) (PSn (KP HJ gw Γ0 s0 p0 fs e mg) u0.locals) := by
  refine hoareG_stG fun s _ hs G v hG hv => ?_
  subst hs
  have he := kp_ev_head hfs hu
  rw [he, Option.some.injEq] at hG
  subst hG
  obtain ⟨x, rfl⟩ := hx v hv
  refine ⟨x, rfl, fun _ => Or.inl ⟨rfl, ?_, rfl⟩⟩
  rcases hoff with rfl | rfl | rfl | rfl
  · exact kp_store_ev hfs hu (j := 6) (by omega) rfl rfl rfl rfl
  · exact kp_store_ev hfs hu (j := 7) (by omega) rfl rfl rfl rfl
  · exact kp_store_ev hfs hu (j := 10) (by omega) rfl rfl rfl rfl
  · exact kp_store_ev hfs hu (j := 25) (by omega) rfl rfl rfl rfl

/-- **`st ev + 192, 0; …`** (`EV_STATE_GAS_SPILLED := 0`). -/
theorem hoareG_kpStSpill0N {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}
    (hfs : fs = (e, c) :: rest) {u0 : State σ} (hu : KP HJ gw Γ0 s0 p0 fs e mg u0)
    {e1 : ExpHOL 64} (hx : ev u0 e1 = some (.val (.word 0))) :
    HoareG σ X (fun t => t = u0) (stG "ev" 192 e1) (PSn (KP HJ gw Γ0 s0 p0 fs e mg) u0.locals) := by
  refine hoareG_stG fun s _ hs G v hG hv => ?_
  subst hs
  have he := kp_ev_head hfs hu
  rw [he, Option.some.injEq] at hG
  subst hG
  rw [hx, Option.some.injEq] at hv
  subst hv
  exact ⟨0, rfl, fun _ => Or.inl ⟨rfl, kp_store_spill0 hfs hu rfl rfl rfl rfl, rfl⟩⟩


/-- **`storeByte x, v`** into the aligned fresh block `Q` (a `tB8` object of the current typing):
`x` evaluates to `Q + off` with `off < 8`. -/
theorem hoareG_kpStByteN {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}
    (hfs : fs = (e, c) :: rest) {u0 : State σ} (hu : KP HJ gw Γ0 s0 p0 fs e mg u0)
    {x v : ExpHOL 64} {Q : BitVec 64} {off : Nat} (hoff : off < 8) (hQ8 : Q.toNat % 8 = 0)
    (hx : ∀ w, ev u0 x = some (.val (.word w)) → w = Q + BitVec.ofNat 64 off)
    (hf : ∀ Γ1 p1, RunT guestC HJ gw Γ0 s0 Γ1 u0 p0 p1 → FreshB Γ1 Q) :
    HoareG σ guestCtx (fun t => t = u0) (.storeByte x v)
      (PSn (KP HJ gw Γ0 s0 p0 fs e mg) u0.locals) := by
  refine hoareG_storeByte fun s _ hs w y mem hw hy hmem => ?_
  subst s
  obtain ⟨hd, hmod⟩ := storeByte_cell hmem
  have hwQ := hx w hw
  have halign : panByteAlignHOL w = Q := by
    apply BitVec.eq_of_toNat_eq
    rw [alignC_toNat, hwQ, BitVec.toNat_add, BitVec.toNat_ofNat]
    have := Q.isLt
    have h8 : off % 2 ^ 64 = off := Nat.mod_eq_of_lt (by omega)
    rw [h8, Nat.mod_eq_of_lt (by omega)]
    omega
  rw [halign] at hmod
  refine Or.inl ⟨rfl, kp_store_inertB hfs hu (Z := fun c => c = Q) ?_ hmod rfl rfl rfl, rfl⟩
  intro Γ1 p1 hrun hch hE
  obtain ⟨o, ho, hob, hot, hsz⟩ := hf Γ1 p1 hrun
  obtain ⟨q, hq, hord, hL, -⟩ := hrun.2.2.2.2.2.1
  refine ⟨?_, ?_⟩
  · rintro a rfl
    refine Or.inl ⟨o, ho, 0, by unfold Obj.HasSlot; omega, by rw [hot]; exact b8_scalar 0, ?_⟩
    rw [← hob]; simp [Obj.cell]
  · intro o' ho' k hk h hz
    have hz' : o'.base + BitVec.ofNat 64 k = o.base + BitVec.ofNat 64 (8 * 0) := by
      rw [hz, ← hob]; simp
    have hne : o'.base ≠ o.base := base_ne_of_ty hL ho' ho (by
      rw [hot]
      rcases h with ⟨h1, -⟩ | h1 | ⟨h1 | h1, -⟩ | h1 | h1 | h1 | h1 | h1 <;> rw [h1] <;> decide)
    exact cell_ne hord hL ho' ho hk (by omega) (Or.inl hne) hz'


/-- **`charge_gas(x);` from a `KP` state.** -/
theorem hoareG_kp_chargeN {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
    {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64} (hfs : fs = (e, c) :: rest)
    {u0 : State σ} (hu : KP HJ gw Γ0 s0 p0 fs e mg u0) {x : ExpHOL 64} :
    HoareG σ guestCtx (fun t => t = u0) (callD (nm "charge_gas") [x])
      (PSn (KP HJ gw Γ0 s0 p0 fs e mg) u0.locals) := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have he := kp_ev_head hfs hu
  refine hoareG_kpCallDn hF hfs (sumSpecA_of_sumSpec (charge_evSpec (σ := σ) guestCtx_code hF))
    charge_fp (by simp [sg1n]) (by simp [sg1n]) (by simp [sg1n, jrOut_iff]) (ks := [8, 23])
    (by decide) hu ?_ ?_ (Or.inr ?_)
  · intro vs hvs Γ1 p1 hr hp hG hL hE
    have hvs1 := evs_one hvs
    obtain ⟨o, ⟨ho, hot, hob⟩, hoe⟩ := evRun_of_chainL (hfs ▸ hL)
    refine ⟨argsOK_any (by simp [sg1n]) (by rw [evs_len hvs]; rfl), fun callee => ⟨o, ho, hot, ?_⟩⟩
    rw [hoe]; exact he
  · intro vs callee Γ1 a hG hp hw
    exact pwrun_topM (by decide) hG hw
  · intro vs callee Γ1 r st Γ2 hq
    obtain ⟨-, -, -, e', a, he', -, hcase⟩ := hq
    have he'' : e' = e := Option.some.inj (he'.symm.trans he)
    subst he''
    rcases hcase with ⟨-, -, hm⟩ | ⟨-, hle, hm⟩
    · rw [hm]; exact le_refl _
    · rw [hm]; exact gs_charge hle

/-- **`charge_state_gas(x);` from a `KP` state.** -/
theorem hoareG_kp_csgN {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
    {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64} (hfs : fs = (e, c) :: rest)
    {u0 : State σ} (hu : KP HJ gw Γ0 s0 p0 fs e mg u0) {x : ExpHOL 64} :
    HoareG σ guestCtx (fun t => t = u0) (callD (nm "charge_state_gas") [x])
      (PSn (KP HJ gw Γ0 s0 p0 fs e mg) u0.locals) := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have he := kp_ev_head hfs hu
  refine hoareG_kpCallDn hF hfs (sumSpecA_of_sumSpec (csg_evSpec (σ := σ) guestCtx_code hF))
    csg_fp (by simp [sg1n]) (by simp [sg1n]) (by simp [sg1n, jrOut_iff]) (ks := [8, 9, 24])
    (by decide) hu ?_ ?_ (Or.inr ?_)
  · intro vs hvs Γ1 p1 hr hp hG hL hE
    obtain ⟨o, ⟨ho, hot, hob⟩, hoe⟩ := evRun_of_chainL (hfs ▸ hL)
    refine ⟨argsOK_any (by simp [sg1n]) (by rw [evs_len hvs]; rfl), fun callee => ⟨o, ho, hot, ?_⟩⟩
    rw [hoe]; exact he
  · intro vs callee Γ1 a hG hp hw
    exact pwrun_topM (by decide) hG hw
  · intro vs callee Γ1 r st Γ2 hq
    obtain ⟨-, -, -, e', a, he', -, hcase⟩ := hq
    have he'' : e' = e := Option.some.inj (he'.symm.trans he)
    subst he''
    exact gs_csg hcase


end kpg

end InitECandidate.Solver.MemSafe.D0
#print axioms InitECandidate.Solver.MemSafe.D0.hoareG_kpCallDn
#print axioms InitECandidate.Solver.MemSafe.D0.hoareG_kpDecCallTn
#print axioms InitECandidate.Solver.MemSafe.D0.hoareG_kpStMsgN
#print axioms InitECandidate.Solver.MemSafe.D0.hoareG_kpStEvN
#print axioms InitECandidate.Solver.MemSafe.D0.hoareG_kpStSpill0N
#print axioms InitECandidate.Solver.MemSafe.D0.hoareG_kpStByteN
#print axioms InitECandidate.Solver.MemSafe.D0.hoareG_kp_chargeN
#print axioms InitECandidate.Solver.MemSafe.D0.hoareG_kp_csgN
