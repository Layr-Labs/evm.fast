import InitECandidate.Solver.MemSafe.Calls.Kit2
import InitECandidate.Solver.MemSafe.Rec.WireR
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# The CALL handlers' Hoare kit, part 3 (frames14): driver-cell steps, `set_retdata`

* `kcall_top`: a step confined to the running frame's driver cells (`TopCells`) keeps `KCall`
  when `Φ` moves by a bounded amount (`kg_top`);
* `hq_csg` (`charge_state_gas(183600)`), `hq_credit` (`credit_state_gas_refund(183600)`): `Φ`
  not raised; `SP`, `CAP`, `MEM_LEN` kept;
* `hq_st64`: `st ev + 64, GAS + y` (`Φ` raised by at most `y`);
* `hq_sd`: `set_retdata(p, n)` (`sd_spec`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Calls
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

section steps
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}
variable [Fact (ChainOf s0 fs)]

local notation "KC" => KCall Γ0 s0 p0 fs
local notation "QC" => QCall Γ0 s0

/-- **A driver-cell step on `KCall`.** -/
theorem kcall_top (hfs : fs = (e, c) :: rest) {Bs : List (BitVec 64)} {d d' : Nat} {u t : State σ}
    (hu : KC Bs d u) (hmod : ModifiesOnly (TopCells e c) u.memory t.memory)
    (hglob : t.globals = u.globals) (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be)
    (hd1 : 1 ≤ d')
    (hΦ : ∀ Γ1, G guestC (Hooks.guestHooksR (σ := σ)) Γ1 u → ChainL guestC tEV tCK Γ1 u fs →
      ChainL guestC tEV tCK Γ1 t fs → wsum t.memory rest = wsum u.memory rest →
      Phi t + d' ≤ Phi u + d) :
    KC Bs d' t ∧ fld t.memory e 16 = fld u.memory e 16 ∧ fld t.memory e 232 = fld u.memory e 232 := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  obtain ⟨hJ, ⟨Γ1, p1, hrun, hch, hE, hB⟩, hΦu, -⟩ := hu
  obtain ⟨hrun2, hch2, hE2, hrest, k16, k232⟩ := kg_top hF hfs hrun hch hE hmod hglob hd hbe
  have := hΦ Γ1 hrun.2.2.2.2.2.1 hch hch2 hrest
  exact ⟨⟨jrNZ_congr hglob hJ, ⟨Γ1, p1, hrun2, hch2, hE2, hB⟩, by omega, Or.inr (by omega)⟩,
    k16, k232⟩

theorem fld_csg (m : Mem) (e a : BitVec 64) {k : Nat} (hk : k < 2 ^ 64) (h72 : k ≠ 72)
    (h64 : k ≠ 64) (h192 : k ≠ 192) : fld (csgMem m e a) e k = fld m e k := by
  unfold csgMem
  rw [fld_upd_ne _ (off_ne e hk (by decide) h192), fld_upd_ne _ (off_ne e hk (by decide) h64),
    fld_upd_ne _ (off_ne e hk (by decide) h72)]

theorem fld_credit (m : Mem) (e a : BitVec 64) {k : Nat} (hk : k < 2 ^ 64) (h72 : k ≠ 72)
    (h64 : k ≠ 64) (h192 : k ≠ 192) : fld (creditMem m e a) e k = fld m e k := by
  unfold creditMem
  rw [fld_upd_ne _ (off_ne e hk (by decide) h72), fld_upd_ne _ (off_ne e hk (by decide) h192),
    fld_upd_ne _ (off_ne e hk (by decide) h64)]

/-- **`charge_state_gas(183600); k`** on `KCall []` (`d ≥ 1`). -/
theorem hq_csg (hfs : fs = (e, c) :: rest) {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hQ : PostOKC Γ0 s0 p0 fs Q) {k : ProgHOL 64} {d : Nat}
    {u0 : State σ} (hu : KC [] d u0) (hd1 : 1 ≤ d)
    (hc : ∀ st : State σ, KC [] d st → (∀ j, j ≠ 72 → j ≠ 64 → j ≠ 192 → j < 280 →
        fld st.memory e j = fld u0.memory e j) →
      HoareG σ guestCtx (fun t => t = { st with locals := u0.locals }) k Q) :
    HoareG σ guestCtx (fun t => t = u0)
      (.seq (callD (nm "charge_state_gas") [cw 183600]) k) Q := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have he := gk_gword hfs (kcall_gk hu)
  have key : ∀ vs callee r (st : State σ),
      SumRelX guestC (Hooks.guestHooksR (σ := σ)) (sg1 []) (fun _ s Γ => Chain guestC tEV tCK Γ s)
        (fun _ s Γ a => ProtCell guestC Γ a ∧ ¬ KCell guestC Γ a) (QGasN guestC tEV tCK) vs
        (callEntryStateHOLFinite u0 callee) r st →
      (Good (some r) → ∃ e' a, vs = [.val (.word a)] ∧
        gword (callEntryStateHOLFinite u0 callee) nmEv = some e' ∧
        st.globals = (callEntryStateHOLFinite u0 callee).globals ∧
        CsgCase (callEntryStateHOLFinite u0 callee).memory e' a r st.memory) →
      st.memaddrs = (callEntryStateHOLFinite u0 callee).memaddrs →
      st.be = (callEntryStateHOLFinite u0 callee).be →
      Good (some r) → ¬ Abortive r → KC [] d st ∧ (∀ j, j ≠ 72 → j ≠ 64 → j ≠ 192 → j < 280 →
        fld st.memory e j = fld u0.memory e j) := by
    intro vs callee r st hR hE hd hbe hg hna
    have hue : KC [] d (callEntryStateHOLFinite u0 callee) := kcall_congr hu rfl rfl rfl rfl
    obtain ⟨e', a, rfl, he', hglob, hcase⟩ := hE hg
    have he1 : e' = e := by
      have : gword u0 nmEv = some e' := he'
      rw [he] at this; exact (Option.some.inj this).symm
    subst he1
    have hmod : ModifiesOnly (TopCells e' c) (callEntryStateHOLFinite u0 callee).memory st.memory := by
      rcases hcase with ⟨_, _, hm⟩ | ⟨_, _, _, hm⟩ | ⟨_, _, _, hm⟩
      · rw [hm]
        exact modifiesOnly_upd (modifiesOnly_refl _ _) (Or.inl ⟨9, by simp [evDriverSlots], rfl⟩) _
      · rw [hm]
        unfold csgMem
        refine modifiesOnly_upd (modifiesOnly_upd (modifiesOnly_upd (modifiesOnly_refl _ _) ?_ _)
          ?_ _) ?_ _
        · exact Or.inl ⟨9, by simp [evDriverSlots], rfl⟩
        · exact Or.inl ⟨8, by simp [evDriverSlots], rfl⟩
        · exact Or.inl ⟨24, by simp [evDriverSlots], rfl⟩
      · rw [hm]; exact modifiesOnly_refl _ _
    obtain ⟨hk1, -, -⟩ := kcall_top hfs hue hmod hglob hd hbe (d' := d) hd1
      fun Γ1 hG1 hch1 _ _ => by
        have hpe : ∃ p, ptrsOf (callEntryStateHOLFinite u0 callee) = some p ∧
            ArgsOK guestC Γ1 p (sg1 []).params [.val (.word a)] := by
          obtain ⟨p, hp, -⟩ := hG1
          exact ⟨p, hp, argsOK_any (any_sg1 []) rfl⟩
        obtain ⟨Γ', -, -, -, -, -, hΦ⟩ := hR hg hna Γ1 hG1 hpe ⟨fs, hch1⟩
        omega
    refine ⟨hk1, fun j h72 h64 h192 hj => ?_⟩
    rcases hcase with ⟨_, _, hm⟩ | ⟨_, _, _, hm⟩ | ⟨_, _, _, hm⟩
    · rw [hm]; exact fld_upd_ne _ (off_ne e' (by omega) (by decide) h72)
    · rw [hm]; exact fld_csg _ _ _ (by omega) h72 h64 h192
    · rw [hm]; rfl
  refine hq_callD (Q := Q)
    (FunSpec.and (sumSpecA_relX (sumSpecA_of_sumSpec (csg_sumSpec guestCtx_code hF)))
      (FunSpec.and (csg_spec guestCtx_code) (funSpec_dom _))) hQ.locA ?_ ?_
  · intro vs hvs callee r st ⟨hR, hE, hd, hbe⟩ habn
    exact hQ.abn r st [] d habn fun hna => (key vs callee r st hR hE hd hbe (good_of_abn habn) hna).1
  · intro vs hvs callee v st ⟨hR, hE, hd, hbe⟩
    obtain ⟨hk1, hkj⟩ := key vs callee _ st hR hE hd hbe (by simp [Good]) (not_abortive_ret v)
    exact hc st hk1 hkj

/-- **`credit_state_gas_refund(183600); k`** on `KCall []` (`d ≥ 1`). -/
theorem hq_credit (hfs : fs = (e, c) :: rest) {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hQ : PostOKC Γ0 s0 p0 fs Q) {k : ProgHOL 64} {d : Nat}
    {u0 : State σ} (hu : KC [] d u0) (hd1 : 1 ≤ d)
    (hc : ∀ st : State σ, KC [] d st →
      HoareG σ guestCtx (fun t => t = { st with locals := u0.locals }) k Q) :
    HoareG σ guestCtx (fun t => t = u0)
      (.seq (callD (nm "credit_state_gas_refund") [cw 183600]) k) Q := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have he := gk_gword hfs (kcall_gk hu)
  have key : ∀ vs callee r (st : State σ),
      SumRelX guestC (Hooks.guestHooksR (σ := σ)) (sg1 []) (fun _ s Γ => Chain guestC tEV tCK Γ s)
        (fun _ s Γ a => ProtCell guestC Γ a ∧ ¬ KCell guestC Γ a) (QGasN guestC tEV tCK) vs
        (callEntryStateHOLFinite u0 callee) r st →
      (Good (some r) → ∃ e' a, vs = [.val (.word a)] ∧
        gword (callEntryStateHOLFinite u0 callee) nmEv = some e' ∧ r = .returned (.val (.word 0)) ∧
        st.globals = (callEntryStateHOLFinite u0 callee).globals ∧
        st.memory = creditMem (callEntryStateHOLFinite u0 callee).memory e' a) →
      st.memaddrs = (callEntryStateHOLFinite u0 callee).memaddrs →
      st.be = (callEntryStateHOLFinite u0 callee).be →
      Good (some r) → ¬ Abortive r → KC [] d st := by
    intro vs callee r st hR hE hd hbe hg hna
    have hue : KC [] d (callEntryStateHOLFinite u0 callee) := kcall_congr hu rfl rfl rfl rfl
    obtain ⟨e', a, rfl, he', -, hglob, hm⟩ := hE hg
    have he1 : e' = e := by
      have : gword u0 nmEv = some e' := he'
      rw [he] at this; exact (Option.some.inj this).symm
    subst he1
    have hmod : ModifiesOnly (TopCells e' c) (callEntryStateHOLFinite u0 callee).memory st.memory := by
      rw [hm]
      unfold creditMem
      refine modifiesOnly_upd (modifiesOnly_upd (modifiesOnly_upd (modifiesOnly_refl _ _) ?_ _)
        ?_ _) ?_ _
      · exact Or.inl ⟨8, by simp [evDriverSlots], rfl⟩
      · exact Or.inl ⟨24, by simp [evDriverSlots], rfl⟩
      · exact Or.inl ⟨9, by simp [evDriverSlots], rfl⟩
    refine (kcall_top hfs hue hmod hglob hd hbe (d' := d) hd1 fun Γ1 hG1 hch1 _ _ => ?_).1
    have hpe : ∃ p, ptrsOf (callEntryStateHOLFinite u0 callee) = some p ∧
        ArgsOK guestC Γ1 p (sg1 []).params [.val (.word a)] := by
      obtain ⟨p, hp, -⟩ := hG1
      exact ⟨p, hp, argsOK_any (any_sg1 []) rfl⟩
    obtain ⟨Γ', -, -, -, -, -, hΦ⟩ := hR hg hna Γ1 hG1 hpe ⟨fs, hch1⟩
    omega
  refine hq_callD (Q := Q)
    (FunSpec.and (sumSpecA_relX (sumSpecA_of_sumSpec (credit_sumSpec guestCtx_code hF)))
      (FunSpec.and (credit_spec guestCtx_code) (funSpec_dom _))) hQ.locA ?_ ?_
  · intro vs hvs callee r st ⟨hR, hE, hd, hbe⟩ habn
    exact hQ.abn r st [] d habn fun hna => key vs callee r st hR hE hd hbe (good_of_abn habn) hna
  · intro vs hvs callee v st ⟨hR, hE, hd, hbe⟩
    exact hc st (key vs callee _ st hR hE hd hbe (by simp [Good]) (not_abortive_ret v))

/-- **`st ev + 64, GAS + y; kont`** on `KCall []`: `Φ` grows by at most `y`. -/
theorem hq_st64 (hfs : fs = (e, c) :: rest) {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {e1 : ExpHOL 64} {kont : ProgHOL 64} {d : Nat}
    {y : BitVec 64} {u0 : State σ} (hu : KC [] d u0)
    (hx : ∀ v, ev u0 e1 = some v → v = .val (.word (fld u0.memory e 64 + y))) (hd : y.toNat + 1 ≤ d)
    (hc : ∀ st : State σ, KC [] (d - y.toNat) st → st.locals = u0.locals →
      HoareG σ guestCtx (fun t => t = st) kont Q) :
    HoareG σ guestCtx (fun t => t = u0) (.seq (stG "ev" 64 e1) kont) Q := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hgk := kcall_gk hu
  refine hoareG_seq (R := fun ro t => ro = none ∧ KC [] (d - y.toNat) t ∧ t.locals = u0.locals) ?_
    (fun r t _ hr _ h => absurd h.1 hr) (fun t ht ⟨_, h1, h2⟩ hg => hc t h1 h2 t ht rfl hg)
  refine hoareG_stG fun s _ hs G v hG hv => ?_
  subst s
  rw [gk_gword hfs hgk, Option.some.injEq] at hG
  subst hG
  rw [hx v hv]
  refine ⟨_, rfl, fun _ => ⟨rfl, ?_, rfl⟩⟩
  refine (kcall_top hfs hu (d' := d - y.toNat)
    (t := { u0 with memory := upd u0.memory (e + BitVec.ofNat 64 64) (fld u0.memory e 64 + y) })
    (modifiesOnly_upd (modifiesOnly_refl _ _)
    (show TopCells e c (e + BitVec.ofNat 64 64) from Or.inl ⟨8, by simp [evDriverSlots], rfl⟩) _)
    rfl rfl rfl (by omega) fun Γ1 hG1 hch1 hch2 hrest => ?_).1
  have := phi_store64 hF hfs hG1 hch1 hch2 (x := fld u0.memory e 64 + y) rfl hrest
  have h2 := Calls.add_toNat_le (fld u0.memory e 64) y
  omega

/-- **`set_retdata(a, b); k`** on `KCall`. -/
theorem hq_sd (hfs : fs = (e, c) :: rest) {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hQ : PostOKC Γ0 s0 p0 fs Q) {a b : ExpHOL 64} {k : ProgHOL 64}
    {Bs : List (BitVec 64)} {d : Nat} {u0 : State σ} (hu : KC Bs d u0)
    (hc : ∀ st : State σ, KC Bs d st →
      HoareG σ guestCtx (fun t => t = { st with locals := u0.locals }) k Q) :
    HoareG σ guestCtx (fun t => t = u0) (.seq (callD (nm "set_retdata") [a, b]) k) Q := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hsd := sd_spec (σ := σ) (X := guestCtx) Rec.foldOK_guestR Hooks.drvCfg_guestHooksR
    Hooks.rdHooks_guestR (Wire.keepsFp_guest (by decide_cbv))
  have hfp : KeepsFp σ guestCtx (nm "set_retdata") := Wire.keepsFp_guest (by decide_cbv)
  have key : ∀ vs, evs u0 [a, b] = some vs → ∀ callee r (st : State σ),
      SumRelX guestC (Hooks.guestHooksR (σ := σ)) (sgA 2 [])
        (fun _ s Γ => ∃ e, EvRun tEV Γ s e ∧ Frames.RetOK guestC Γ s.memory e.base)
        (fun vs s Γ a => ProtCell guestC Γ a ∧ PWtopM tEV tCK [18, 19, 27] vs s Γ a)
        (fun vs s Γ r t Γ' => Frames.FQ vs s Γ r t Γ' ∧ ∀ e, gword s nmEv = some e →
          Frames.RetOK guestC Γ' t.memory e) vs
        (callEntryStateHOLFinite u0 callee) r st →
      (Good (some r) → ¬ Abortive r →
        st.globals.lookup gFrame = (callEntryStateHOLFinite u0 callee).globals.lookup gFrame) →
      Good (some r) → ¬ Abortive r → KC Bs d st := by
    intro vs hvs callee r st hR hfk hg hna
    obtain ⟨hJ, ⟨Γ1, p1, hrun, hch, hE, hB⟩, hΦ0, hact0⟩ := hu
    obtain ⟨o, hevo, hob⟩ := gk_head hfs hch
    have he0 : gword (callEntryStateHOLFinite u0 callee) nmEv = some e := by
      rw [← hob]; exact hevo.2.2
    have hlen : vs.length = 2 := by rw [evs_len hvs]; rfl
    obtain ⟨Γ2, p2, hrun2, hch2, hE2, hΦ2, hJ2, hact2, -, hBuf, -, -, -⟩ := kc_coreB hF hfs
      (sg := sgA 2 []) (fun g h => by simp [sgA] at h) (by simp [sgA]) (by simp [sgA, jrOut_iff])
      (ks := [18, 19, 27]) (by decide) (by decide) (by decide) hrun hch hE hJ hR (hfk hg hna) hg hna
      (argsOK_any (sgA_any 2 []) (by rw [hlen]; rfl))
      ⟨o, hevo, by rw [hob]; exact hch.retd (e, c) (by rw [hfs]; simp)⟩
      (fun a _ h => h) (Or.inl ⟨by decide, by decide⟩) (Or.inr fun Γ2 hq => hq.2 e he0)
    refine ⟨hJ2, ⟨Γ2, p2, hrun2, hch2, hE2, fun b hb => hBuf _ _ (hB b hb)⟩, by omega, ?_⟩
    rw [hact2]; omega
  refine hq_callD (Q := Q) (FunSpec.and (sumSpecA_relX hsd) hfp) hQ.locA ?_ ?_
  · intro vs hvs callee r st ⟨hR, hfk⟩ habn
    exact hQ.abn r st Bs d habn fun hna => key vs hvs callee r st hR hfk (good_of_abn habn) hna
  · intro vs hvs callee v st ⟨hR, hfk⟩
    exact hc st (key vs hvs callee _ st hR hfk (by simp [Good]) (not_abortive_ret v))

end steps

end InitECandidate.Solver.MemSafe.Calls

#print axioms InitECandidate.Solver.MemSafe.Calls.kcall_top
#print axioms InitECandidate.Solver.MemSafe.Calls.hq_csg
#print axioms InitECandidate.Solver.MemSafe.Calls.hq_credit
#print axioms InitECandidate.Solver.MemSafe.Calls.hq_st64
#print axioms InitECandidate.Solver.MemSafe.Calls.hq_sd
