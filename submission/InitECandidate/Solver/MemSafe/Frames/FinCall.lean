import InitECandidate.Solver.MemSafe.Frames.FinRel

/-!
# `finish_child`: steps on the parent side

* `SumRelA`: the relation of a `SumSpecA` for one call; `finB_call`: a call to a summarized
  callee with `PWtop ks` from a `FinB` state.
* `finB_driver`: a write confined to the parent's gas slots `[8, 9, 23, 24]` (the exact effects of
  `incorporate_child_on_error` and `credit_state_gas_refund`).
* `icoe_gas`, `credit_gas`: the parent's `GAS_LEFT + STATE_GAS_SPILLED` after these.
-/

set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- The relation of `SumSpecA σ X C H f sg Pre PW Q` for one call. -/
def SumRelA (C : Cfg) (H : Hooks σ) (sg : Sig)
    (Pre : List (ValueHOL 64) → State σ → Gam → Prop)
    (PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop)
    (Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop)
    (vs : List (ValueHOL 64)) (s : State σ) (r : PanSemResultExact 64) (t : State σ) : Prop :=
  Good (some r) → ¬ Abortive r → ∀ Γ, G C H Γ s → (∃ p, ptrsOf s = some p ∧ ArgsOK C Γ p sg.params vs) →
    Pre vs s Γ → ∃ Γ' p p', SumCore C H sg (fun a => ProtCell C Γ a ∧ PW vs s Γ a) Γ s vs r t Γ' p p' ∧
      Q vs s Γ r t Γ'

theorem sumSpecA_rel {C : Cfg} {H : Hooks σ} {f : MlS} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (h : SumSpecA σ X C H f sg Pre PW Q) :
    FunSpec σ X f (fun vs s r t => SumRelA C H sg Pre PW Q vs s r t) := h

/-- **A summarized call from a `FinB` state** (entry state of the call `s`, result state `st`). -/
theorem finB_call {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop} (hF : FrameCfg C H tEV tCK)
    (hX : XCfg C tEV tCK P R) (hevX : ∀ j ∈ evXSlots, (C.ty tEV).slot j = .prot)
    {sw : State σ} {e c e' c' : BitVec 64} {rest : List Frame} {Γu : Gam} {s : State σ}
    (h : FinB C H tEV tCK P R sw e c e' c' rest Γu s) {sg : Sig} {ks : List Nat}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {st : State σ}
    (hR : SumRelA C H sg Pre (PWtopM tEV tCK ks) Q vs s r st) (hg : Good (some r))
    (hna : ¬ Abortive r) (hargs : ∀ p, ptrsOf s = some p → ArgsOK C Γu p sg.params vs)
    (hpre : Pre vs s Γu) (hks : ∀ k ∈ ks, 8 * k + 8 ≤ 280) (hksX : ∀ k ∈ ks, k ∉ evXSlots)
    (hgw : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw)
    (hJ : JrPG C) (hgJ : JrOut (sg.gw))
    (hac : ∀ a, ArgCells sg.params vs a → ¬ ProtCell C Γu a)
    (hfpQ : ∀ Γ', Q vs s Γu r st Γ' → FpQ s st)
    (hpar : ∀ Γ', Q vs s Γu r st Γ' → (∀ a, ProtCell C Γu a → ¬ PWtop tEV tCK ks vs s Γu a →
      st.memory a = s.memory a) → ∀ j ∈ parKeep, fld st.memory e' (8 * j) = fld s.memory e' (8 * j)) :
    ∃ Γ', FinB C H tEV tCK P R sw e c e' c' rest Γ' st ∧ Q vs s Γu r st Γ' ∧
      (∀ a, ProtCell C Γu a → ¬ PWtop tEV tCK ks vs s Γu a → st.memory a = s.memory a) ∧
      Ext Γu Γ' := by
  obtain ⟨p, hp, -⟩ := h.G
  obtain ⟨Γ', p1, p2, hc, hq⟩ := hR hg hna Γu h.G ⟨p, hp, hargs p hp⟩ hpre
  have hpk := keep_pwtop (sumCore_prot hc h.G hac)
  have hfp : p2.fp = p1.fp := hfpQ Γ' hq p1 p2 hc.1 hc.2.1
  obtain ⟨hB, -⟩ := finB_step' hF hX hevX h hks hksX hgw hJ hgJ hc hac hfp (hpar Γ' hq hpk)
  exact ⟨Γ', hB, hq, hpk, hc.2.2.2.1⟩

/-- **A summarized call of a log writer from a `FinB` state** (package L). -/
theorem finB_callL {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop} (hF : FrameCfg C H tEV tCK)
    (hLog : LogStepOK σ C P R) (hLst : ∀ {Γ' : Gam} {t : State σ}, G C H Γ' t → LstArrAt Γ' t.memory)
    (hevX : ∀ j ∈ evXSlots, (C.ty tEV).slot j = .prot)
    {sw : State σ} {e c e' c' : BitVec 64} {rest : List Frame} {Γu : Gam} {s : State σ}
    (h : FinB C H tEV tCK P R sw e c e' c' rest Γu s) {sg : Sig} {ks : List Nat}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {st : State σ}
    (hR : SumRelA C H sg Pre (PWtopL tEV tCK ks) Q vs s r st) (hg : Good (some r))
    (hna : ¬ Abortive r) (hargs : ∀ p, ptrsOf s = some p → ArgsOK C Γu p sg.params vs)
    (hpre : Pre vs s Γu) (hks : ∀ k ∈ ks, 8 * k + 8 ≤ 280) (hksX : ∀ k ∈ ks, k ∉ evXSlots)
    (hgw : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw)
    (hJ : JrPG C) (hgJ : JrOut (sg.gw))
    (hac : ∀ a, ArgCells sg.params vs a → ¬ ProtCell C Γu a)
    (hSubQ : ∀ Γ', Q vs s Γu r st Γ' → ∀ p', ptrsOf st = some p' →
      LogSub Γu Γ' p'.hp s.memory st.memory)
    (hfpQ : ∀ Γ', Q vs s Γu r st Γ' → FpQ s st)
    (hpar : ∀ Γ', Q vs s Γu r st Γ' → (∀ a, ProtCell C Γu a → ¬ PWtop tEV tCK ks vs s Γu a →
      st.memory a = s.memory a) → ∀ j ∈ parKeep, fld st.memory e' (8 * j) = fld s.memory e' (8 * j)) :
    ∃ Γ', FinB C H tEV tCK P R sw e c e' c' rest Γ' st ∧ Q vs s Γu r st Γ' ∧
      (∀ a, ProtCell C Γu a → ¬ PWtop tEV tCK ks vs s Γu a → st.memory a = s.memory a) ∧
      Ext Γu Γ' := by
  obtain ⟨p, hp, -⟩ := h.G
  obtain ⟨Γ', p1, p2, hc, hq⟩ := hR hg hna Γu h.G ⟨p, hp, hargs p hp⟩ hpre
  have hpk : ∀ a, ProtCell C Γu a → ¬ PWtop tEV tCK ks vs s Γu a → st.memory a = s.memory a :=
    fun a hp hn => sumCore_prot hc h.G hac a hp fun h' => hn h'.1
  have hfp : p2.fp = p1.fp := hfpQ Γ' hq p1 p2 hc.1 hc.2.1
  obtain ⟨hB, -⟩ := finB_stepL hF hLog hLst hevX h hks hksX hgw hJ hgJ hc hac hfp (hpar Γ' hq hpk)
    (hSubQ Γ' hq p2 hc.2.1)
  exact ⟨Γ', hB, hq, hpk, hc.2.2.2.1⟩

/-- Unconstrained arguments: `ArgsOK` and no buffer cells. -/
theorem argsOK_anyL {C : Cfg} {Γ : Gam} {p : Ptrs} {ps : List PT} (hps : ∀ pt ∈ ps, pt = .any)
    {vs : List (ValueHOL 64)} (hlen : vs.length = ps.length) : ArgsOK C Γ p ps vs :=
  argsOK_any hps hlen

/-- The gas slots of the running EV record. -/
def gasKs : List Nat := [8, 9, 23, 24]

/-- **A write to the parent's gas slots** keeps `FinB`. -/
theorem finB_driver {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop} (hF : FrameCfg C H tEV tCK)
    (hX : XCfg C tEV tCK P R) (hevX : ∀ j ∈ evXSlots, (C.ty tEV).slot j = .prot)
    (hmt : tEV ∉ msgTys ∧ tCK ∉ msgTys) (hJ : JrPG C) {sw : State σ} {e c e' c' : BitVec 64} {rest : List Frame} {Γu : Gam} {u t : State σ}
    (h : FinB C H tEV tCK P R sw e c e' c' rest Γu u)
    (hmod : ModifiesOnly (fun a => ∃ k ∈ gasKs, a = e' + BitVec.ofNat 64 (8 * k)) u.memory t.memory)
    (hg : t.globals = u.globals) (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be) :
    FinB C H tEV tCK P R sw e c e' c' rest Γu t ∧
      (∀ a, ProtCell C Γu a → ¬ PWtop tEV tCK gasKs [] u Γu a → t.memory a = u.memory a) := by
  have h0 := h.G
  obtain ⟨p, hp, hord, hL, -⟩ := h0
  obtain ⟨o, ho, hob, hot⟩ := (h.objs (e', c') (by simp)).1
  have hob' : o.base = e' := hob
  have hsafe : SafeCells C H Γu u (fun a => ∃ k ∈ gasKs, a = e' + BitVec.ofNat 64 (8 * k)) := by
    rintro a ⟨k, hk, rfl⟩
    refine safe_ev hF hL ho hot (j := k) ?_ (by rw [← hob']; rfl)
    simp only [gasKs, List.mem_cons, List.mem_nil_iff, or_false] at hk
    rcases hk with rfl | rfl | rfl | rfl <;> simp [evDriverSlots]
  have hc := sumCore_local (sg := sg1 []) (vs := []) (r := .returned (.val (.word 0)))
    (PW := PWtopM tEV tCK gasKs [] u Γu) hF.hooks rfl h.G hp hsafe (by
      rintro a ⟨k, hk, rfl⟩ -
      have hsz := ev_size hF hL ho hot
      have hk' : k ≤ 24 := by
        simp only [gasKs, List.mem_cons, List.mem_nil_iff, or_false] at hk; omega
      refine ⟨Or.inl ⟨o, ⟨ho, hot, by rw [hob']; exact h.ev⟩, k, hk, by rw [← hob']; rfl⟩, ?_⟩
      rw [← hob']
      exact noMsg_of_frame hL hmt ho (Or.inl hot) (inO_cell hord hL ho (k := 8 * k) (by omega)))
    hmod hg hd hbe
  exact finB_step hF hX hevX h (fun k hk => by
      simp only [gasKs, List.mem_cons, List.mem_nil_iff, or_false] at hk
      rcases hk with rfl | rfl | rfl | rfl <;> exact ⟨by simp [parKeep], by omega⟩)
    (by decide) (by simp [sg1]) hJ (by simp [sg1]) hc (fun a ha => absurd ha (argCells_any (by simp [sg1]))) rfl

theorem toNat_add_le (a b : BitVec 64) : (a + b).toNat ≤ a.toNat + b.toNat := by
  rw [BitVec.toNat_add]; exact Nat.mod_le _ _

theorem ne_off {b : BitVec 64} {i j : Nat} (hi : i < 2 ^ 64) (hj : j < 2 ^ 64) (h : i ≠ j) :
    b + BitVec.ofNat 64 i ≠ b + BitVec.ofNat 64 j := by
  intro he
  have := congrArg BitVec.toNat ((BitVec.add_right_inj b).mp he)
  rw [toNat_ofNat_lt hi, toNat_ofNat_lt hj] at this
  exact h this

/-- `incorporate_child_on_error`'s memory: the parent's gas cells. -/
theorem icoe_mod (m : Mem) (e c : BitVec 64) :
    ModifiesOnly (fun a => ∃ k ∈ gasKs, a = e + BitVec.ofNat 64 (8 * k)) m (icoeMem m e c) := by
  unfold icoeMem addMem
  exact modifiesOnly_upd (modifiesOnly_upd (modifiesOnly_upd (modifiesOnly_refl _ _)
    ⟨8, by simp [gasKs], rfl⟩ _) ⟨9, by simp [gasKs], rfl⟩ _) ⟨23, by simp [gasKs], rfl⟩ _

theorem icoe_gas (m : Mem) (e c : BitVec 64) :
    (fld (icoeMem m e c) e 64).toNat + (fld (icoeMem m e c) e 192).toNat ≤
      (fld m e 64).toNat + (fld m e 192).toNat + (fld m c 64).toNat := by
  unfold icoeMem addMem
  rw [fld_upd_ne' (ne_off (by decide) (by decide) (by decide)),
    fld_upd_ne' (ne_off (by decide) (by decide) (by decide)), fld_upd_eq,
    fld_upd_ne' (ne_off (by decide) (by decide) (by decide)),
    fld_upd_ne' (ne_off (by decide) (by decide) (by decide)),
    fld_upd_ne' (ne_off (by decide) (by decide) (by decide))]
  have := toNat_add_le (fld m e 64) (fld m c 64)
  omega

theorem creditMem_mod (m : Mem) (e a : BitVec 64) :
    ModifiesOnly (fun x => ∃ k ∈ gasKs, x = e + BitVec.ofNat 64 (8 * k)) m (creditMem m e a) := by
  unfold creditMem
  exact modifiesOnly_upd (modifiesOnly_upd (modifiesOnly_upd (modifiesOnly_refl _ _)
    ⟨8, by simp [gasKs], rfl⟩ _) ⟨24, by simp [gasKs], rfl⟩ _) ⟨9, by simp [gasKs], rfl⟩ _

theorem minF_le (a b : BitVec 64) : (minF a b).toNat ≤ b.toNat := by
  unfold minF
  split
  · rename_i h; rw [BitVec.lt_def] at h; omega
  · exact le_refl _

theorem credit_gas (m : Mem) (e a : BitVec 64) :
    (fld (creditMem m e a) e 64).toNat + (fld (creditMem m e a) e 192).toNat ≤
      (fld m e 64).toNat + (fld m e 192).toNat := by
  have g64 : fld (creditMem m e a) e 64 = fld m e 64 + minF a (fld m e 192) := by
    unfold creditMem
    rw [fld_upd_ne' (ne_off (i := 64) (j := 72) (by decide) (by decide) (by decide)),
      fld_upd_ne' (ne_off (i := 64) (j := 192) (by decide) (by decide) (by decide)), fld_upd_eq]
  have g192 : fld (creditMem m e a) e 192 = fld m e 192 - minF a (fld m e 192) := by
    unfold creditMem
    rw [fld_upd_ne' (ne_off (i := 192) (j := 72) (by decide) (by decide) (by decide)), fld_upd_eq]
  rw [g64, g192]
  have h1 := toNat_add_le (fld m e 64) (minF a (fld m e 192))
  have h2 := minF_le a (fld m e 192)
  have h3 : (fld m e 192 - minF a (fld m e 192)).toNat =
      (fld m e 192).toNat - (minF a (fld m e 192)).toNat := by
    rw [BitVec.toNat_sub_of_le (by rw [BitVec.le_def]; exact h2)]
  omega

end InitECandidate.Solver.MemSafe.Frames
