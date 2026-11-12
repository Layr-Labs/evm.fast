import InitECandidate.Solver.MemSafe.Frames.FinHyps

/-!
# `finish_child`: the parent-side steps

`BS … L Gs spk u`: the facts tracked through a branch after the switch: the locals of `finish_child`
(as in `L`), `FinB`, the parent's `RetOK`, its stack pointer (if `spk`), and a gas fact `Gs`.
Each lemma below is one call of the branches, from `BS` to `BS` (or an abnormal result `PAb`).
-/

set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- The locals of `finish_child`. -/
def finNames : List MlS :=
  [nm "rec", nm "child", nm "parent", nm "kind", nm "msg", nm "new_account_charged",
    nm "child_mark", nm "child_mem_mark", nm "out_start", nm "out_size", nm "contract_address"]

/-- The parent-side branch facts. -/
def BS (C : Cfg) (H : Hooks σ) (tEV tCK : Nat) (P : Gam → Mem → Ptrs → Frame → Prop)
    (R : Gam → Mem → Frame → Frame → Prop) (sw : State σ) (e c e' c' : BitVec 64)
    (rest : List Frame) (L : Locs) (Gs : State σ → Prop) (spk : Bool) (u : State σ) : Prop :=
  (∀ x ∈ finNames, u.locals.lookup x = L.lookup x) ∧
    ∃ Γu, FinB C H tEV tCK P R sw e c e' c' rest Γu u ∧ RetOK C Γu u.memory e' ∧
      (spk = true → fld u.memory e' 16 = fld sw.memory e' 16) ∧ Gs u

/-- The parent's gas unchanged. -/
def Gas0 (sw : State σ) (e' : BitVec 64) (u : State σ) : Prop :=
  fld u.memory e' 64 = fld sw.memory e' 64 ∧ fld u.memory e' 192 = fld sw.memory e' 192

/-- The parent's gas after incorporating the child. -/
def GasB (sw : State σ) (e e' : BitVec 64) (u : State σ) : Prop :=
  (fld u.memory e' 64).toNat + (fld u.memory e' 192).toNat ≤
    (fld sw.memory e' 64).toNat + (fld sw.memory e' 192).toNat + (fld sw.memory e 64).toNat +
      (fld sw.memory e 192).toNat

/-- A `prot` EV slot of the parent or the child survives a call writing `PWtop ks`. -/
theorem fin_slot_keep {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop} (hF : FrameCfg C H tEV tCK)
    {sw : State σ} {e c e' c' : BitVec 64} {rest : List Frame} {Γu : Gam} {s st : State σ}
    (hB : FinB C H tEV tCK P R sw e c e' c' rest Γu s) {ks : List Nat} {vs : List (ValueHOL 64)}
    (hk : ∀ a, ProtCell C Γu a → ¬ PWtop tEV tCK ks vs s Γu a → st.memory a = s.memory a)
    (hks : ∀ k ∈ ks, 8 * k + 8 ≤ 280) {b : BitVec 64} (hb : b = e' ∨ b = e) {j : Nat}
    (hj : j ∈ evProtSlots) (hjk : b = e' → j ∉ ks) :
    fld st.memory b (8 * j) = fld s.memory b (8 * j) := by
  obtain ⟨q, hq, hord, hL, -⟩ := hB.G
  have hesz : ∀ x ∈ Γu, x.ty = tEV → ∀ k ∈ ks, x.HasSlot k := by
    intro x hx hxt k hk
    have := ev_size hF hL hx hxt
    unfold Obj.HasSlot; have := hks k hk; omega
  obtain ⟨o, ho, hob, hot⟩ : ∃ o ∈ Γu, o.base = b ∧ o.ty = tEV := by
    rcases hb with hb | hb
    · rw [hb]; exact (hB.objs (e', c') (by simp)).1
    · rw [hb]; exact (hB.objs (e, c) (by simp)).1
  have hsz := ev_size hF hL ho hot
  have hj' : j ≤ 29 := by simp [evProtSlots] at hj; omega
  rw [← hob]
  refine frame_keep hord hL hesz hk ho (Or.inl hot) (by unfold Obj.HasSlot; omega)
    (by rw [hot]; exact hF.evProt j hj) fun heb => ?_
  rw [hB.ev] at heb
  exact hjk (hob.symm.trans (Option.some.inj heb).symm)

theorem fin_par_keep {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop} (hF : FrameCfg C H tEV tCK)
    {sw : State σ} {e c e' c' : BitVec 64} {rest : List Frame} {Γu : Gam} {s st : State σ}
    (hB : FinB C H tEV tCK P R sw e c e' c' rest Γu s) {ks : List Nat} {vs : List (ValueHOL 64)}
    (hk : ∀ a, ProtCell C Γu a → ¬ PWtop tEV tCK ks vs s Γu a → st.memory a = s.memory a)
    (hks : ∀ k ∈ ks, 8 * k + 8 ≤ 280) (hkp : ∀ k ∈ ks, k ∉ parKeep) :
    ∀ j ∈ parKeep, fld st.memory e' (8 * j) = fld s.memory e' (8 * j) := by
  intro j hj
  refine fin_slot_keep hF hB hk hks (Or.inl rfl) ?_ fun _ h => hkp j h hj
  simp only [parKeep, List.mem_cons, List.mem_nil_iff, or_false] at hj
  rcases hj with rfl | rfl | rfl | rfl | rfl | rfl <;> simp [evProtSlots]

theorem evs_two {s : State σ} {a b : ExpHOL 64} {vs : List (ValueHOL 64)}
    (h : evs s [a, b] = some vs) : vs.length = 2 := by
  obtain ⟨v1, r1, rfl, -, h2⟩ := evs_cons_inv h
  obtain ⟨v2, r2, rfl, -, h4⟩ := evs_cons_inv h2
  rw [evs_nil] at h4; cases h4; rfl

theorem evs_one_len {s : State σ} {a : ExpHOL 64} {vs : List (ValueHOL 64)}
    (h : evs s [a] = some vs) : vs.length = 1 := by
  obtain ⟨v1, r1, rfl, -, h2⟩ := evs_cons_inv h
  rw [evs_nil] at h2; cases h2; rfl

theorem bs_locals {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop} {sw : State σ}
    {e c e' c' : BitVec 64} {rest : List Frame} {L : Locs} {Gs : State σ → Prop} {spk : Bool}
    {u : State σ} (h : BS C H tEV tCK P R sw e c e' c' rest L Gs spk u) (l : Locs)
    (hl : ∀ x ∈ finNames, l.lookup x = u.locals.lookup x)
    (hGs : Gs u → Gs { u with locals := l }) :
    BS C H tEV tCK P R sw e c e' c' rest L Gs spk { u with locals := l } := by
  obtain ⟨hfl, Γu, hB, hr, hs, hg⟩ := h
  exact ⟨fun x hx => (hl x hx).trans (hfl x hx), Γu, finB_locals hH hB l, hr, hs, hGs hg⟩

/-- **A plain call on the parent side** (the callee writes no gas, stack-pointer or returndata
slot of the parent): `BS` is kept. -/
theorem bs_call {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop} (hF : FrameCfg C H tEV tCK)
    (hX : XCfg C tEV tCK P R) (hevX : ∀ j ∈ evXSlots, (C.ty tEV).slot j = .prot)
    {sw : State σ} {e c e' c' : BitVec 64} {rest : List Frame} {L : Locs} {Gs : State σ → Prop}
    {spk : Bool} {f : MlS} {args : List (ExpHOL 64)} {sg : Sig} {ks : List Nat}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hspec : SumSpecA σ X C H f sg Pre (PWtopM tEV tCK ks) Q)
    (hks : ∀ k ∈ ks, 8 * k + 8 ≤ 280 ∧ k ∉ parKeep ∧ k ≠ 2 ∧ k ≠ 8 ∧ k ≠ 18 ∧ k ≠ 24 ∧ k ≠ 27)
    (hksX : ∀ k ∈ ks, k ∉ evXSlots)
    (hgw : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hJ : JrPG C) (hgJ : JrOut (sg.gw))
    (hargs : ∀ s vs Γu, InCtx s X → BS C H tEV tCK P R sw e c e' c' rest L Gs spk s →
      FinB C H tEV tCK P R sw e c e' c' rest Γu s → evs s args = some vs → ∀ p, ptrsOf s = some p →
        ArgsOK C Γu p sg.params vs ∧ ∀ a, ArgCells sg.params vs a → ¬ ProtCell C Γu a)
    (hpre : ∀ s vs Γu callee, BS C H tEV tCK P R sw e c e' c' rest L Gs spk s →
      FinB C H tEV tCK P R sw e c e' c' rest Γu s → evs s args = some vs →
        Pre vs (callEntryStateHOLFinite s callee) Γu)
    (hQ : ∀ vs s Γ r t Γ', Q vs s Γ r t Γ' → FpQ s t ∧ NoE r)
    (hGs : ∀ s st : State σ, Gs s → fld st.memory e' 64 = fld s.memory e' 64 →
      fld st.memory e' 192 = fld s.memory e' 192 → Gs { st with locals := s.locals }) :
    HoareG σ X (BS C H tEV tCK P R sw e c e' c' rest L Gs spk) (callD f args)
      (fun ro u => (ro = none ∧ BS C H tEV tCK P R sw e c e' c' rest L Gs spk u) ∨
        (ro ≠ none ∧ PAb C H ro u)) := by
  have hH := hF.hooks
  have hks' : ∀ k ∈ ks, 8 * k + 8 ≤ 280 := fun k hk => (hks k hk).1
  refine hoareG_finCallD (sw := sw) (e := e) (c := c) (e' := e') (c' := c') (rest := rest) hF hX hevX
    hspec hks' hksX hgw hJ hgJ fun s hs hbs vs hvs => ?_
  obtain ⟨hfl, Γu, hB, hrd, hsp, hgs⟩ := hbs
  obtain ⟨p, hp, -⟩ := hB.G
  have hbs : BS C H tEV tCK P R sw e c e' c' rest L Gs spk s := ⟨hfl, Γu, hB, hrd, hsp, hgs⟩
  refine ⟨Γu, hB, fun p' hp' => (hargs s vs Γu hs hbs hB hvs p' hp').1,
    fun callee => hpre s vs Γu callee hbs hB hvs, (hargs s vs Γu hs hbs hB hvs p hp).2,
    fun callee r st Γ' hq => ⟨(hQ _ _ _ _ _ _ hq).1, (hQ _ _ _ _ _ _ hq).2, fun hk => ?_⟩⟩
  have hkk : ∀ a, ProtCell C Γu a → ¬ PWtop tEV tCK ks vs s Γu a → st.memory a = s.memory a := hk
  have keepj : ∀ j ∈ evProtSlots, j ∉ ks → fld st.memory e' (8 * j) = fld s.memory e' (8 * j) :=
    fun j hj hjk => fin_slot_keep hF hB hkk hks' (Or.inl rfl) hj fun _ => hjk
  refine ⟨fin_par_keep hF hB hkk hks' (fun k hk => (hks k hk).2.1), fun v hv hB' hext => ?_⟩
  have k8 := keepj 8 (by simp [evProtSlots]) fun h => (hks 8 h).2.2.2.1 rfl
  have k24 := keepj 24 (by simp [evProtSlots]) fun h => (hks 24 h).2.2.2.2.2.1 rfl
  have k18 := keepj 18 (by simp [evProtSlots]) fun h => (hks 18 h).2.2.2.2.1 rfl
  have k27 := keepj 27 (by simp [evProtSlots]) fun h => (hks 27 h).2.2.2.2.2.2 rfl
  have k2 := keepj 2 (by simp [evProtSlots]) fun h => (hks 2 h).2.2.1 rfl
  refine ⟨fun x hx => hfl x hx, Γ', finB_locals hH hB' _, ?_, fun h => ?_, hGs s st hgs k8 k24⟩
  · exact retOK_ext hext k18 k27 hrd
  · exact k2.trans (hsp h)

/-- **A call on the parent side, general form**: the post states the parent's `parKeep` slots, its
`RetOK`, its stack pointer and the next gas fact. -/
theorem bs_callG {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop} (hF : FrameCfg C H tEV tCK)
    (hX : XCfg C tEV tCK P R) (hevX : ∀ j ∈ evXSlots, (C.ty tEV).slot j = .prot)
    {sw : State σ} {e c e' c' : BitVec 64} {rest : List Frame} {L : Locs}
    {Gs Gs' : State σ → Prop} {spk spk' : Bool} {f : MlS} {args : List (ExpHOL 64)} {sg : Sig}
    {ks : List Nat} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hspec : SumSpecA σ X C H f sg Pre (PWtopM tEV tCK ks) Q) (hks : ∀ k ∈ ks, 8 * k + 8 ≤ 280)
    (hksX : ∀ k ∈ ks, k ∉ evXSlots)
    (hgw : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hJ : JrPG C) (hgJ : JrOut (sg.gw))
    (hargs : ∀ s vs Γu, InCtx s X → BS C H tEV tCK P R sw e c e' c' rest L Gs spk s →
      FinB C H tEV tCK P R sw e c e' c' rest Γu s → evs s args = some vs → ∀ p, ptrsOf s = some p →
        ArgsOK C Γu p sg.params vs ∧ ∀ a, ArgCells sg.params vs a → ¬ ProtCell C Γu a)
    (hpre : ∀ s vs Γu callee, BS C H tEV tCK P R sw e c e' c' rest L Gs spk s →
      FinB C H tEV tCK P R sw e c e' c' rest Γu s → RetOK C Γu s.memory e' → evs s args = some vs →
        Pre vs (callEntryStateHOLFinite s callee) Γu)
    (hQ : ∀ s vs Γu callee r st Γ', BS C H tEV tCK P R sw e c e' c' rest L Gs spk s →
      FinB C H tEV tCK P R sw e c e' c' rest Γu s → evs s args = some vs →
      Q vs (callEntryStateHOLFinite s callee) Γu r st Γ' → FpQ s st ∧ NoE r)
    (hpost : ∀ s vs Γu callee r st Γ', BS C H tEV tCK P R sw e c e' c' rest L Gs spk s →
      FinB C H tEV tCK P R sw e c e' c' rest Γu s → RetOK C Γu s.memory e' →
      (spk = true → fld s.memory e' 16 = fld sw.memory e' 16) → Gs s →
      evs s args = some vs → Q vs (callEntryStateHOLFinite s callee) Γu r st Γ' →
      (∀ a, ProtCell C Γu a → ¬ PWtop tEV tCK ks vs s Γu a → st.memory a = s.memory a) →
      (∀ j ∈ parKeep, fld st.memory e' (8 * j) = fld s.memory e' (8 * j)) ∧
      (Ext Γu Γ' → RetOK C Γ' st.memory e') ∧
      (spk' = true → fld st.memory e' 16 = fld sw.memory e' 16) ∧ Gs' { st with locals := s.locals }) :
    HoareG σ X (BS C H tEV tCK P R sw e c e' c' rest L Gs spk) (callD f args)
      (fun ro u => (ro = none ∧ BS C H tEV tCK P R sw e c e' c' rest L Gs' spk' u) ∨
        (ro ≠ none ∧ PAb C H ro u)) := by
  have hH := hF.hooks
  refine hoareG_finCallD (sw := sw) (e := e) (c := c) (e' := e') (c' := c') (rest := rest) hF hX hevX
    hspec hks hksX hgw hJ hgJ fun s hs hbs vs hvs => ?_
  obtain ⟨hfl, Γu, hB, hrd, hsp, hgs⟩ := hbs
  obtain ⟨p, hp, -⟩ := hB.G
  have hbs : BS C H tEV tCK P R sw e c e' c' rest L Gs spk s := ⟨hfl, Γu, hB, hrd, hsp, hgs⟩
  refine ⟨Γu, hB, fun p' hp' => (hargs s vs Γu hs hbs hB hvs p' hp').1,
    fun callee => hpre s vs Γu callee hbs hB hrd hvs, (hargs s vs Γu hs hbs hB hvs p hp).2,
    fun callee r st Γ' hq => ⟨(hQ s vs Γu callee r st Γ' hbs hB hvs hq).1,
      (hQ s vs Γu callee r st Γ' hbs hB hvs hq).2, fun hk => ?_⟩⟩
  obtain ⟨h1, h2, h3, h4⟩ := hpost s vs Γu callee r st Γ' hbs hB hrd hsp hgs hvs hq hk
  exact ⟨h1, fun v hv hB' hext => ⟨fun x hx => hfl x hx, Γ', finB_locals hH hB' _, h2 hext, h3, h4⟩⟩

/-- **A call of a log writer on the parent side, general form** (package L); see `bs_callG`.
The footprint is `PWtopL`, and `Q` implies the `LogSub` description of the lists.
**A call on the parent side, general form**: the post states the parent's `parKeep` slots, its
`RetOK`, its stack pointer and the next gas fact. -/
theorem bs_callGL {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop} (hF : FrameCfg C H tEV tCK)
    (hLog : LogStepOK σ C P R) (hLst : ∀ {Γ' : Gam} {t : State σ}, G C H Γ' t → LstArrAt Γ' t.memory)
    (hevX : ∀ j ∈ evXSlots, (C.ty tEV).slot j = .prot)
    {sw : State σ} {e c e' c' : BitVec 64} {rest : List Frame} {L : Locs}
    {Gs Gs' : State σ → Prop} {spk spk' : Bool} {f : MlS} {args : List (ExpHOL 64)} {sg : Sig}
    {ks : List Nat} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hspec : SumSpecA σ X C H f sg Pre (PWtopL tEV tCK ks) Q)
    (hLogQ : ∀ vs s Γ r t Γ', Q vs s Γ r t Γ' → ∀ p', ptrsOf t = some p' →
      LogSub Γ Γ' p'.hp s.memory t.memory) (hks : ∀ k ∈ ks, 8 * k + 8 ≤ 280)
    (hksX : ∀ k ∈ ks, k ∉ evXSlots)
    (hgw : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hJ : JrPG C) (hgJ : JrOut (sg.gw))
    (hargs : ∀ s vs Γu, InCtx s X → BS C H tEV tCK P R sw e c e' c' rest L Gs spk s →
      FinB C H tEV tCK P R sw e c e' c' rest Γu s → evs s args = some vs → ∀ p, ptrsOf s = some p →
        ArgsOK C Γu p sg.params vs ∧ ∀ a, ArgCells sg.params vs a → ¬ ProtCell C Γu a)
    (hpre : ∀ s vs Γu callee, BS C H tEV tCK P R sw e c e' c' rest L Gs spk s →
      FinB C H tEV tCK P R sw e c e' c' rest Γu s → RetOK C Γu s.memory e' → evs s args = some vs →
        Pre vs (callEntryStateHOLFinite s callee) Γu)
    (hQ : ∀ s vs Γu callee r st Γ', BS C H tEV tCK P R sw e c e' c' rest L Gs spk s →
      FinB C H tEV tCK P R sw e c e' c' rest Γu s → evs s args = some vs →
      Q vs (callEntryStateHOLFinite s callee) Γu r st Γ' → FpQ s st ∧ NoE r)
    (hpost : ∀ s vs Γu callee r st Γ', BS C H tEV tCK P R sw e c e' c' rest L Gs spk s →
      FinB C H tEV tCK P R sw e c e' c' rest Γu s → RetOK C Γu s.memory e' →
      (spk = true → fld s.memory e' 16 = fld sw.memory e' 16) → Gs s →
      evs s args = some vs → Q vs (callEntryStateHOLFinite s callee) Γu r st Γ' →
      (∀ a, ProtCell C Γu a → ¬ PWtop tEV tCK ks vs s Γu a → st.memory a = s.memory a) →
      (∀ j ∈ parKeep, fld st.memory e' (8 * j) = fld s.memory e' (8 * j)) ∧
      (Ext Γu Γ' → RetOK C Γ' st.memory e') ∧
      (spk' = true → fld st.memory e' 16 = fld sw.memory e' 16) ∧ Gs' { st with locals := s.locals }) :
    HoareG σ X (BS C H tEV tCK P R sw e c e' c' rest L Gs spk) (callD f args)
      (fun ro u => (ro = none ∧ BS C H tEV tCK P R sw e c e' c' rest L Gs' spk' u) ∨
        (ro ≠ none ∧ PAb C H ro u)) := by
  have hH := hF.hooks
  refine hoareG_finCallDL (sw := sw) (e := e) (c := c) (e' := e') (c' := c') (rest := rest) hF hLog hLst
    hevX hspec hLogQ hks hksX hgw hJ hgJ fun s hs hbs vs hvs => ?_
  obtain ⟨hfl, Γu, hB, hrd, hsp, hgs⟩ := hbs
  obtain ⟨p, hp, -⟩ := hB.G
  have hbs : BS C H tEV tCK P R sw e c e' c' rest L Gs spk s := ⟨hfl, Γu, hB, hrd, hsp, hgs⟩
  refine ⟨Γu, hB, fun p' hp' => (hargs s vs Γu hs hbs hB hvs p' hp').1,
    fun callee => hpre s vs Γu callee hbs hB hrd hvs, (hargs s vs Γu hs hbs hB hvs p hp).2,
    fun callee r st Γ' hq => ⟨(hQ s vs Γu callee r st Γ' hbs hB hvs hq).1,
      (hQ s vs Γu callee r st Γ' hbs hB hvs hq).2, fun hk => ?_⟩⟩
  obtain ⟨h1, h2, h3, h4⟩ := hpost s vs Γu callee r st Γ' hbs hB hrd hsp hgs hvs hq hk
  exact ⟨h1, fun v hv hB' hext => ⟨fun x hx => hfl x hx, Γ', finB_locals hH hB' _, h2 hext, h3, h4⟩⟩

end InitECandidate.Solver.MemSafe.Frames
