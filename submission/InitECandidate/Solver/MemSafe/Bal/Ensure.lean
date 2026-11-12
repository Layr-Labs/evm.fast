import InitECandidate.Solver.MemSafe.Bal.Key
import InitECandidate.Solver.MemSafe.Bal.Closed
import InitECandidate.Solver.MemSafe.HtabEntries.StateRestore

set_option maxRecDepth 100000
set_option linter.unusedSectionVars false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Bal
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

/-- The tracked footprint of `bal_ensure_account`: the cells of the `htab_set` capability (table headers
and arrays) of the entry typing, or unallocated at entry. -/
def eaPW (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (a : BitVec 64) : Prop :=
  (ProtCell guestC Γ0 a ∧ CapPW (capsHT tHTd20) s0 Γ0 a) ∨ ¬ p0.Allocated a.toNat

/-- `bal_accounts` is the non-null `tHTd20` object `T`. -/
def BalNN (s : State σ) (Γ : Gam) : Prop :=
  ∃ T ∈ Γ, T.ty = tHTd20 ∧ gword s (nm "bal_accounts") = some T.base

/-- The post of the body. -/
def EaQ (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  ∀ v, r = some (.returned v) → ∃ Γ', Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (eaPW Γ0 s0 p0) Γ' t ∧
    t.globals.lookup (nm "bal_accounts") = s0.globals.lookup (nm "bal_accounts") ∧
    ∃ w, v = .val (.word w) ∧ ∃ o ∈ Γ', o.base = w ∧ o.ty = tAD

theorem eaQ_locals (hH : HooksLawful guestC (guestHooksR (σ := σ))) {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}
    (r : Option (PanSemResultExact 64)) (t : State σ) (L : HolFiniteMapExact MlS (ValueHOL 64))
    (h : EaQ Γ0 s0 p0 r t) : EaQ Γ0 s0 p0 r { t with locals := L } := by
  intro v hv
  obtain ⟨Γ', hT, hg, hr⟩ := h v hv
  exact ⟨Γ', Struct.trk_congr hH hT rfl rfl rfl rfl, hg, hr⟩

theorem valid_word {s : State σ} {x : MlS} {w0 : BitVec 64} {v : ValueHOL 64}
    (hold : s.locals.lookup x = some (.val (.word w0)))
    (h : isValidValueHOLExact s.toExact .local x v = true) : ∃ w, v = .val (.word w) := by
  simp only [isValidValueHOLExact, lookupKvarHOLExact] at h
  split at h
  · rename_i old hold'
    have : old = .val (.word w0) := by
      have h1 : s.locals.lookup x = some old := hold'
      rw [hold] at h1
      exact (Option.some.inj h1).symm
    subst this
    have h1 := (shapeEqHOL_eq_true _ _).mp h
    refine val_of_shapeEq_one ((shapeEqHOL_eq_true _ _).mpr ?_)
    rw [h1, shapeOf_val]
  · simp at h

section body
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

/-- The record under construction: the block `AD` (outside `Γ`, allocated since entry), the first `k`
slots hold words fitting `adTy`, plus extra information `X`. -/
def EaMid (s0 : State σ) (Γ0 : Gam) (p0 : Ptrs) (ADDR AD : BitVec 64) (k : Nat)
    (X : Gam → State σ → Prop) (u : State σ) : Prop :=
  u.locals.lookup (nm "addr") = some (.val (.word ADDR)) ∧
  u.locals.lookup (nm "ad") = some (.val (.word AD)) ∧
  ∃ Γ, Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (eaPW Γ0 s0 p0) Γ u ∧
    u.globals.lookup (nm "bal_accounts") = s0.globals.lookup (nm "bal_accounts") ∧
    (∃ q, ptrsOf u = some q ∧ AD.toNat % 8 = 0 ∧ heapBase ≤ AD.toNat ∧ AD.toNat + 40 ≤ q.hp ∧
      ∀ c, AD.toNat ≤ c → c < AD.toNat + 40 → ¬ InObj Γ c ∧ ¬ p0.Allocated c ∧ q.Allocated c) ∧
    (∀ j, j < k → Fits Γ (adTy.slot j) (rd u.memory (AD + BitVec.ofNat 64 (8 * j)))) ∧ X Γ u

/-- The cells of a block outside `Γ` and allocated are not changed by a callee that writes no argument
buffer and no cell of `Γ`. -/
theorem blk_unchanged {sg : Sig} {PWf : BitVec 64 → Prop} {Γ Γ' : Gam} {u t : State σ}
    {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {p p' : Ptrs}
    (hc : SumCore guestC (guestHooksR (σ := σ)) sg (fun a => ProtCell guestC Γ a ∧ PWf a) Γ u vs r t Γ' p p')
    (hG : G guestC (guestHooksR (σ := σ)) Γ u) (hnoArg : ∀ a, ¬ ArgCells sg.params vs a)
    {c : BitVec 64} (hnin : ¬ InObj Γ c.toNat) (hal : p.Allocated c.toNat) :
    t.memory c = u.memory c := by
  obtain ⟨hps, -, -, -, -, -, hmod, -⟩ := hc
  obtain ⟨q, hq, hord, hL, -⟩ := hG
  rw [hps] at hq
  cases hq
  refine hmod c fun h => ?_
  rcases h with ⟨o, ho, k, hk, -, rfl⟩ | h | h | ⟨⟨o, ho, k, hk, -, rfl⟩, -⟩
  · exact hnin (cell_in hord hL ho hk)
  · exact hnoArg _ h
  · exact h hal
  · exact hnin (cell_in hord hL ho hk)

/-- A block outside `Γ`, allocated at `p`, stays so after a callee that adds only fresh objects. -/
theorem blk_keep {Γ Γ' : Gam} {p p' : Ptrs} {p0 : Ptrs} {AD : Nat} (hord : p.Ordered)
    (hord' : p'.Ordered) (hm : p.Mono p') (hnf : NewFresh Γ Γ' p p')
    (h : ∀ c, AD ≤ c → c < AD + 40 → ¬ InObj Γ c ∧ ¬ p0.Allocated c ∧ p.Allocated c) :
    ∀ c, AD ≤ c → c < AD + 40 → ¬ InObj Γ' c ∧ ¬ p0.Allocated c ∧ p'.Allocated c := by
  intro c h1 h2
  obtain ⟨hn, hn0, hal⟩ := h c h1 h2
  refine ⟨?_, hn0, ?_⟩
  · rintro ⟨o, ho, ho1, ho2⟩
    have hlt : c < 2 ^ 64 := by
      have := alloc_lt hord hal
      have : scratchEnd < 2 ^ 64 := by decide
      omega
    have hcb : (BitVec.ofNat 64 c).toNat = c := by
      rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt hlt]
    rcases hnf o ho (BitVec.ofNat 64 c) (by rw [hcb]; exact ho1) (by rw [hcb]; exact ho2) with
      ⟨o0, ho0, -, -, h3, h4⟩ | hf
    · exact hn ⟨o0, ho0, by rw [hcb] at h3; exact h3, by rw [hcb] at h4; exact h4⟩
    · have := Struct.fresh_notAlloc hord hord' hm hf
      rw [hcb] at this
      exact this hal
  · unfold Ptrs.Allocated at hal ⊢
    obtain ⟨m1, m2, m3⟩ := hm
    omega

theorem argsOK_eq2 {C : Cfg} {Γ : Gam} {p : Ptrs} {a b : Nat} :
    ArgsOK C Γ p [.eq a, .eq b] [.val (.word (BitVec.ofNat 64 a)), .val (.word (BitVec.ofNat 64 b))] := by
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  rcases i with _ | _ | i
  · simp at hpt hv; subst hpt; subst hv; rfl
  · simp at hpt hv; subst hpt; subst hv; rfl
  · simp at hpt

theorem argCells_eq2 {a b : Nat} {vs : List (ValueHOL 64)} {x : BitVec 64} :
    ¬ ArgCells [.eq a, .eq b] vs x := by
  rintro ⟨i, w, -, h⟩
  rcases h with ⟨n, hn, -⟩ | ⟨j, c, d, y, hj, -⟩
  · rcases i with _ | _ | i <;> simp at hn
  · rcases i with _ | _ | i <;> simp at hj

/-- One summarised call returning a fresh pointer of type `ty` into the local `x` (extends the state
`EaMid k` with the new object). -/
theorem ea_callstep (hH : HooksLawful guestC (guestHooksR (σ := σ))) (hord0 : p0.Ordered)
    (hL0 : Layout guestC p0 Γ0) {ADDR AD : BitVec 64} {k : Nat} (hk5 : k ≤ 5)
    {X : Gam → State σ → Prop}
    {u : State σ} (hu : EaMid s0 Γ0 p0 ADDR AD k X u) {x : MlS} (hx1 : x ≠ nm "addr")
    (hx2 : x ≠ nm "ad") {a b ty : Nat} {callee : HolFiniteMapExact MlS (ValueHOL 64)} {st : State σ}
    {w : BitVec 64}
    (hS : Good (some (PanSemResultExact.returned (.val (.word w)))) →
      ¬ Abortive (PanSemResultExact.returned (.val (.word w))) →
      ∀ Γ', G guestC (guestHooksR (σ := σ)) Γ' (callEntryStateHOLFinite u callee) →
      (∃ p, ptrsOf (callEntryStateHOLFinite u callee) = some p ∧
        ArgsOK guestC Γ' p [.eq a, .eq b] [.val (.word (BitVec.ofNat 64 a)), .val (.word (BitVec.ofNat 64 b))]) →
      ReqOK ([] : List Cap) (callEntryStateHOLFinite u callee) Γ' →
      ∃ Γ1 p p', SumCore guestC (guestHooksR (σ := σ)) ⟨[.eq a, .eq b], [.fits (.ptr ty)], [], true⟩
          (fun y => ProtCell guestC Γ' y ∧ CapPW ([] : List Cap) (callEntryStateHOLFinite u callee) Γ' y)
          Γ' (callEntryStateHOLFinite u callee)
          [.val (.word (BitVec.ofNat 64 a)), .val (.word (BitVec.ofNat 64 b))]
          (PanSemResultExact.returned (.val (.word w))) st Γ1 p p' ∧ True)
    (hgl : st.globals.lookup (nm "bal_accounts") = u.globals.lookup (nm "bal_accounts"))
    (hd : st.memaddrs = u.memaddrs) (hbe : st.be = u.be) :
    EaMid s0 Γ0 p0 ADDR AD k (fun Γ z => ∃ w', z.locals.lookup x = some (.val (.word w')) ∧
      Fits Γ (.ptr ty) w') (setVarHOLFinite x (.val (.word w)) { st with locals := u.locals }) := by
  obtain ⟨hl1, hl2, Γ, hT, hbal, ⟨q, hq, hAD8, hhb, hhp, hblk⟩, hfits, hX⟩ := hu
  obtain ⟨Γ1, p, p', hc, -, hT1⟩ := call_cs hH hT hord0 hL0
    (sg := ⟨[.eq a, .eq b], [.fits (.ptr ty)], [], true⟩)
    (Pre := fun _ s Γ => ReqOK ([] : List Cap) s Γ) (PW' := fun _ s Γ y => CapPW ([] : List Cap) s Γ y)
    (Q := fun _ _ _ _ _ _ => True) (vs := [.val (.word (BitVec.ofNat 64 a)), .val (.word (BitVec.ofNat 64 b))])
    (r := .returned (.val (.word w))) (callee := callee) (st := st) hS (by simp [Good]) (by simp [Abortive])
    ⟨q, hq, argsOK_eq2⟩ (fun c hc => by cases hc) (fun g _ => by simp)
    (fun y hy => absurd hy argCells_eq2) (fun y _ h => by obtain ⟨c, hc, -⟩ := h; cases hc) hd hbe
  have hcc := hc
  obtain ⟨hps, hpt, hmono, hext, hnf, hG1, hmod, hpg, hgrow, hret⟩ := hc
  have hG1c := hG1
  obtain ⟨q0, hq0, hord, hLay, -⟩ := Struct.trk_G hT
  rw [hq] at hq0
  cases hq0
  have hqq : ptrsOf (callEntryStateHOLFinite u callee) = some q := (Frames.ptrsOf_congr rfl).trans hq
  rw [hqq] at hps
  cases hps
  obtain ⟨q1, hq1, hord', -⟩ := hG1
  rw [hpt] at hq1
  cases hq1
  have hGe : G guestC (guestHooksR (σ := σ)) Γ (callEntryStateHOLFinite u callee) :=
    Struct.G_congr (s := u) hH rfl rfl rfl rfl (Struct.trk_G hT)
  refine ⟨(lk_set_ne _ _ hx1).trans hl1, (lk_set_ne _ _ hx2).trans hl2, Γ1,
    Struct.trk_congr hH hT1 rfl rfl rfl rfl, hgl.trans hbal, ⟨p', (Frames.ptrsOf_congr rfl).trans hpt, hAD8, hhb,
    by have := hmono.1; omega, blk_keep hord hord' hmono hnf hblk⟩, ?_, ⟨_, lk_set_self _ _ _, ?_⟩⟩
  · intro j hj
    have hc0 := hblk (AD.toNat + 8 * j) (by omega) (by omega)
    have hlt := alloc_lt hord hc0.2.2
    have hse : scratchEnd < 2 ^ 32 := by decide
    have hcn : (AD + BitVec.ofNat 64 (8 * j)).toNat = AD.toNat + 8 * j := by
      rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega), Nat.mod_eq_of_lt (by omega)]
    have hun := blk_unchanged (sg := ⟨[.eq a, .eq b], [.fits (.ptr ty)], [], true⟩)
      hcc hGe (fun y => argCells_eq2)
      (c := AD + BitVec.ofNat 64 (8 * j)) (by rw [hcn]; exact hc0.1) (by rw [hcn]; exact hc0.2.2)
    show Fits Γ1 _ (rd st.memory _)
    unfold rd
    rw [hun]
    exact fits_ext hext (hfits j hj)
  · have := hret (.val (.word w)) rfl 0 (.fits (.ptr ty)) w (by simp) (by simp [flattenHOL])
    exact this

theorem eaMid_exists {ADDR AD : BitVec 64} {k : Nat} {Xw : BitVec 64 → Gam → State σ → Prop} {u : State σ}
    (h : EaMid s0 Γ0 p0 ADDR AD k (fun Γ z => ∃ w, Xw w Γ z) u) :
    ∃ w, EaMid s0 Γ0 p0 ADDR AD k (Xw w) u := by
  obtain ⟨hl1, hl2, Γ, hT, hb, hblk, hfits, w, hw⟩ := h
  exact ⟨w, hl1, hl2, Γ, hT, hb, hblk, hfits, hw⟩

/-- `st ad + 8k, x`: the new field joins the record under construction. -/
theorem ea_store (hH : HooksLawful guestC (guestHooksR (σ := σ))) {ADDR AD : BitVec 64} {k : Nat}
    (hk : k < 5) {x : MlS} {ty : Nat} (hty : adTy.slot k = .ptr ty) :
    Hoare σ guestCtx
      (fun u => ∃ w, EaMid s0 Γ0 p0 ADDR AD k
        (fun Γ z => z.locals.lookup x = some (.val (.word w)) ∧ Fits Γ (.ptr ty) w) u)
      (.store (.op .add [lv (nm "ad"), cw (8 * k)]) (lv x))
      (fun r t => r = none ∧ EaMid s0 Γ0 p0 ADDR AD (k + 1)
        (fun _ z => ∃ w', z.locals.lookup x = some (.val (.word w'))) t) := by
  refine hoare_exists fun w => ?_
  refine Spec.Inv.hoare_store_w (fun _ => AD + BitVec.ofNat 64 (8 * k)) (fun _ => w) ?_ ?_ ?_
  · rintro u _ ⟨hl1, hl2, -⟩ w' hw'
    rw [ev_add2 (Mpt.Leaves.ev_lv' hl2) (ev_cw _ (8 * k))] at hw'
    cases hw'; rfl
  · rintro u _ ⟨hl1, hl2, Γ, hT, hb, hblk, hfits, hxl, hf⟩ v hv
    rw [Mpt.Leaves.ev_lv' hxl] at hv
    cases hv; rfl
  · rintro u _ ⟨hl1, hl2, Γ, hT, hb, ⟨q, hq, hAD8, hhb, hhp, hblk⟩, hfits, hxl, hf⟩
    obtain ⟨q', hq', hord, hLay, -⟩ := Struct.trk_G hT
    rw [hq] at hq'
    cases hq'
    have hAD40 : AD.toNat + 40 ≤ scratchEnd := by
      have := alloc_lt hord (hblk (AD.toNat + 39) (by omega) (by omega)).2.2
      omega
    have hse : scratchEnd < 2 ^ 32 := by decide
    have hcn : ∀ i, i < 5 → (AD + BitVec.ofNat 64 (8 * i)).toNat = AD.toNat + 8 * i := fun i hi => by
      rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega), Nat.mod_eq_of_lt (by omega)]
    have hc0 := hblk (AD.toNat + 8 * k) (by omega) (by omega)
    have hT' := trk_tmpI hH hT (a := AD + BitVec.ofNat 64 (8 * k)) (by rw [hcn k hk]; exact hc0.1)
      (by rw [hcn k hk]; exact hc0.2.1) w
    refine ⟨rfl, hl1, hl2, Γ, hT', hb, ⟨q, hq, hAD8, hhb, hhp, hblk⟩, ?_, w, hxl⟩
    intro j hj
    by_cases hjk : j = k
    · subst hjk
      show Fits Γ _ (rd (Spec.Inv.upd u.memory _ w) _)
      rw [rd_iupd_self, hty]
      exact hf
    · have hne : AD + BitVec.ofNat 64 (8 * j) ≠ AD + BitVec.ofNat 64 (8 * k) := fun h => hjk (by
        have := congrArg BitVec.toNat h
        rw [hcn j (by omega), hcn k hk] at this
        omega)
      show Fits Γ _ (rd (Spec.Inv.upd u.memory _ w) _)
      rw [rd_iupd_ne hne]
      exact hfits j (by omega)


/-- A fresh, disjoint object whose fields fit joins the typing (`trk_addObjLL` with typed slots). -/
theorem trk_adopt {C : Cfg} {H : Hooks σ} (hM : HooksMono C H) {PW : BitVec 64 → Prop} {Γ : Gam}
    {t : State σ} (h : Struct.Trk C H Γ0 s0 p0 PW Γ t) {x : Obj} {p : Ptrs} (hp : ptrsOf t = some p)
    (hal : x.lo % 8 = 0) (hsz8 : x.size % 8 = 0) (hpos : 0 < x.size)
    (hmin : (C.ty x.ty).minSz ≤ x.size) (hlive : (C.ty x.ty).region.Live p x.lo x.size)
    (hfr : ∀ a : BitVec 64, x.lo ≤ a.toNat → a.toNat < x.hi → Fresh p0 p a)
    (hdisj : ∀ a : BitVec 64, Frames.InO x a → ¬ InObj Γ a.toNat)
    (hfit : ∀ k, x.HasSlot k → Fits (Γ ++ [x]) ((C.ty x.ty).slot k) (rd t.memory (x.cell k)))
    (htag : C.tags.lookup x.ty = none)
    (hwf : ∀ p, Layout C p (Γ ++ [x]) → H.wf (Γ ++ [x]) t x) :
    Struct.Trk C H Γ0 s0 p0 PW (Γ ++ [x]) t := by
  obtain ⟨p', hp', hm, hx, hnf, hG, hmod, hpg, hd, hbe⟩ := h
  rw [hp] at hp'
  cases hp'
  refine ⟨p, hp, hm, Struct.ext_trans hx (Frames.ext_append Γ x), ?_,
    G_addObjLL hM hG hal hsz8 hpos hmin (fun q hq => by rw [hp] at hq; cases hq; exact hlive) hdisj
      hfit htag hwf, hmod, hpg, hd, hbe⟩
  intro o ho a h1 h2
  rcases List.mem_append.mp ho with ho | ho
  · rcases hnf o ho a h1 h2 with h' | h'
    · exact Or.inl h'
    · exact Or.inr h'
  · simp only [List.mem_singleton] at ho
    subst ho
    exact Or.inr (hfr a h1 h2)

/-- The record is complete: it joins the typing as a `tAD` object. -/
theorem ea_adopt {ADDR AD : BitVec 64} {X : Gam → State σ → Prop} {u : State σ}
    (hu : EaMid s0 Γ0 p0 ADDR AD 5 X u) (hord0 : p0.Ordered) :
    ∃ Γ, Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (eaPW Γ0 s0 p0) (Γ ++ [⟨AD, tAD, 40⟩]) u ∧
      u.globals.lookup (nm "bal_accounts") = s0.globals.lookup (nm "bal_accounts") ∧
      Ext Γ0 Γ ∧ u.locals.lookup (nm "addr") = some (.val (.word ADDR)) ∧
      u.locals.lookup (nm "ad") = some (.val (.word AD)) := by
  obtain ⟨hl1, hl2, Γ, hT, hbal, ⟨q, hq, hAD8, hhb, hhp, hblk⟩, hfits, hX⟩ := hu
  obtain ⟨q', hq', hord, hLay, -⟩ := Struct.trk_G hT
  rw [hq] at hq'
  cases hq'
  have hreg : (guestC.ty tAD).region = .heap := by decide
  refine ⟨Γ, trk_adopt (x := ⟨AD, tAD, 40⟩) guestHooksR_mono hT hq hAD8 (by show (40 : Nat) % 8 = 0; decide)
    (by show 0 < (40 : Nat); decide) (by show (guestC.ty tAD).minSz ≤ 40; decide) ?_ ?_ ?_ ?_
    (by show guestC.tags.lookup tAD = none; decide) (fun _ _ => wf_AD _ _ _ rfl), hbal,
    Struct.trk_ext hT, hl1, hl2⟩
  · show (guestC.ty tAD).region.Live q AD.toNat 40
    rw [hreg]
    exact ⟨hhb, hhp⟩
  · intro a h1 h2
    have h1' : AD.toNat ≤ a.toNat := h1
    have h2' : a.toNat < AD.toNat + 40 := h2
    have hn0 := (hblk a.toNat h1' h2').2.1
    unfold Ptrs.Allocated at hn0
    unfold Fresh
    left
    omega
  · intro a ha
    exact (hblk a.toNat ha.1 ha.2).1
  · intro k hk
    have hk5 : k < 5 := by unfold Obj.HasSlot at hk; simp at hk; omega
    exact Frames.fits_append (hfits k hk5)


/-- The last two statements: `htab_set(bal_accounts, addr, ad); return ad`. -/
theorem ea_final (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0) {T0 : Obj} (hT0 : T0 ∈ Γ0)
    (hT0t : T0.ty = tHTd20) (hbal : s0.globals.lookup (nm "bal_accounts") = some (.val (.word T0.base)))
    {ADDR AD : BitVec 64} (hkey : SrcKey Γ0 ADDR 20 tHTd20) :
    Hoare σ guestCtx
      (fun u => ∃ Γ, Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (eaPW Γ0 s0 p0) (Γ ++ [⟨AD, tAD, 40⟩]) u ∧
        u.globals.lookup (nm "bal_accounts") = s0.globals.lookup (nm "bal_accounts") ∧
        Ext Γ0 Γ ∧ u.locals.lookup (nm "addr") = some (.val (.word ADDR)) ∧
        u.locals.lookup (nm "ad") = some (.val (.word AD)))
      (.seq (callD (nm "htab_set") [gBal, lv (nm "addr"), lv (nm "ad")]) (.return (lv (nm "ad"))))
      (EaQ Γ0 s0 p0) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  refine hoare_seq (R := fun r t => r = none ∧ ∃ Γ', Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0
      (eaPW Γ0 s0 p0) Γ' t ∧ t.globals.lookup (nm "bal_accounts") = s0.globals.lookup (nm "bal_accounts") ∧
      t.locals.lookup (nm "ad") = some (.val (.word AD)) ∧ ∃ o ∈ Γ', o.base = AD ∧ o.ty = tAD)
    ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_callD (FunSpec.and (sumSpec_htab_set_k hF guestHooksR_mono htabHooks_guestR (th := tHTd20)
        (by decide)) (FunSpec.and (Frames.funSpec_dom _)
        (funSpec_bal_gw hF.hX (g := nm "bal_accounts") (by simp) (f := nm "htab_set") (by decide_cbv)))) ?_
    rintro s hs ⟨Γ, hT, hb, hext, hl1, hl2⟩ vs hvs callee v st ⟨hS, ⟨hd, hbe⟩, hgw⟩ hst
    obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨a2, r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
    obtain ⟨a3, r3, rfl, ha3, hr3⟩ := evs_cons_inv hr2
    rw [evs_nil] at hr3
    cases hr3
    have hb' : s.globals.lookup (nm "bal_accounts") = some (.val (.word T0.base)) := by rw [hb]; exact hbal
    rw [show ev s gBal = some (.val (.word T0.base)) from ev_gv hb'] at ha1
    rw [Mpt.Leaves.ev_lv' hl1] at ha2
    rw [Mpt.Leaves.ev_lv' hl2] at ha3
    cases ha1; cases ha2; cases ha3
    obtain ⟨q0, hq0, hord, hLay, hFl, hTg, hGl, hW⟩ := Struct.trk_G hT
    obtain ⟨T1, hT1, hT1b, hT1t, -⟩ := (Struct.trk_ext hT) T0 hT0
    have hko : hkOf T1.ty = .tab := by rw [hT1t, hT0t]; exact hkOf_of_tab (by decide)
    have hw : tabW (Γ ++ [⟨AD, tAD, 40⟩]) s T1 := htabHooks_guestR.get _ s T1 hko (hW T1 hT1)
    have hko' : KeyOut s T1.base ADDR 20 q0.hp :=
      keyOut_of_srcKey hord hLay hw hko (th := tHTd20) (by rw [hT1t, hT0t]) (srcKey_ext (Struct.trk_ext hT) hkey)
    have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some q0 := (Frames.ptrsOf_congr rfl).trans hq0
    have hpre : SetPreK tHTd20 [.val (.word T0.base), .val (.word ADDR), .val (.word AD)]
        (callEntryStateHOLFinite s callee) (Γ ++ [⟨AD, tAD, 40⟩]) :=
      ⟨T0.base, ADDR, AD, rfl, q0, hpe, by rw [← hT1b]; exact hko'⟩
    have hargs : ArgsOK guestC (Γ ++ [⟨AD, tAD, 40⟩]) q0 (setSigK tHTd20).params
        [.val (.word T0.base), .val (.word ADDR), .val (.word AD)] :=
      argsOK3 ⟨_, rfl, T1, hT1, hT1b, by rw [hT1t, hT0t]⟩ trivial
        ⟨_, rfl, List.mem_append_right _ (List.mem_singleton_self _) |> fun h => ⟨_, h, rfl, rfl⟩⟩
    have hT0' := hT
    obtain ⟨pT, hpT, hmT, hxT, hnfT, hGT, -⟩ := hT0'
    obtain ⟨qT, hqT, hordT, hLayT, -⟩ := hGT
    rw [hpT] at hqT
    cases hqT
    have hpTq : pT = q0 := Option.some.inj (hpT.symm.trans hq0)
    subst hpTq
    obtain ⟨Γ1, pp, pp', hc, -, hT1⟩ := call_cs hH hT hord0 hL0 (sg := setSigK tHTd20)
      (Pre := SetPreK tHTd20) (PW' := fun _ s Γ y => CapPW (capsHT tHTd20) s Γ y)
      (Q := fun _ _ _ _ _ _ => True)
      (vs := [.val (.word T0.base), .val (.word ADDR), .val (.word AD)]) (r := .returned v)
      (callee := callee) (st := st) hS (by simp [Good]) (by simp [Abortive])
      ⟨pT, hq0, hargs⟩ hpre (fun g _ => by simp [setSigK])
      (fun y hy => by
        exfalso
        obtain ⟨i, w, -, h⟩ := hy
        rcases h with ⟨n, hn, -⟩ | ⟨j, c, d, y', hj, -⟩
        · match i, hn with
          | 0, hn => simp [setSigK] at hn
          | 1, hn => simp [setSigK] at hn
          | 2, hn => simp only [setSigK, List.getElem?_cons_succ, List.getElem?_cons_zero,
              Option.some.injEq] at hn; exact valPT_ne_buf tHTd20 n hn
          | _ + 3, hn => simp [setSigK] at hn
        · match i, hj with
          | 0, hj => simp [setSigK] at hj
          | 1, hj => simp [setSigK] at hj
          | 2, hj => simp only [setSigK, List.getElem?_cons_succ, List.getElem?_cons_zero,
              Option.some.injEq] at hj; exact valPT_ne_bufArg tHTd20 j c d hj
          | _ + 3, hj => simp [setSigK] at hj)
      (fun y hpc hpw => capBack hord0 hordT hmT hL0 hLayT hnfT capsHT_self hpc hpw) hd hbe
    obtain ⟨o', ho', hob, hot, -⟩ := hc.2.2.2.1 ⟨AD, tAD, 40⟩ (List.mem_append_right _ (List.mem_singleton_self _))
    exact ⟨rfl, Γ1, Struct.trk_congr hH hT1 rfl rfl rfl rfl, hgw.trans hb, hl2, o', ho', hob, hot⟩
  · refine hoare_return fun t _ ⟨_, Γ', hT, hb, hl, o, ho, hob, hot⟩ w hw => fun v' hv' => ?_
    rw [Mpt.Leaves.ev_lv' hl] at hw
    cases hw
    cases hv'
    exact ⟨Γ', Struct.trk_congr hH hT rfl rfl rfl rfl, hb, _, rfl, o, ho, hob, hot⟩

end body

end InitECandidate.Solver.MemSafe.Bal
