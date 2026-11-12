import InitECandidate.Solver.MemSafe.HtabEntries.StateRestore

/-!
# Journal steps for `jset` / `jdel`

* `jrec_not_fp`: a cell of the record just past the live ones (`journal_n`, below `journal_cap`)
  is in no hook footprint of the journal family;
* `trk_jstore`: a store into such a cell keeps the tracking (`G_frame_prot`: the cell is a `prot`
  cell of the journal object, no tag, read by no hook);
* `G_jn_inc` / `trkJ_inc`: raising `journal_n` by one keeps `G` once the new record is a valid
  `JEnt` (the twin of `G_jn_dec`);
* `trkJ_of_trk`, `sumCore_of_trkJA` (the final `SumCore` when the tracked footprint also contains
  the function's own argument buffers).
-/

set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.HtabEntries
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-! ## Record cells -/

theorem jc_toNat {e : Obj} {q : Nat} (h : e.lo + 8 * q < 2 ^ 64) : (jc e.base q).toNat = e.lo + 8 * q := by
  rw [← cell_jc]; exact cellN h

/-- A cell of record `n` (`n < journal_cap`) lies in the journal object, at slot `4 n + k`. -/
theorem jrec_in {Γ : Gam} {s : State σ} {e : Obj} (hJ : JrOK Γ s e) {n c : BitVec 64}
    (hn : gword s gJn = some n) (hc : gword s gJc = some c) (hlt : n.toNat < c.toNat)
    {k : Nat} (hk : k < 4) :
    e.HasSlot (4 * n.toNat + k) ∧ (jc e.base (4 * n.toNat + k)).toNat = e.lo + 8 * (4 * n.toNat + k) ∧
      e.lo ≤ (jc e.base (4 * n.toNat + k)).toNat ∧ (jc e.base (4 * n.toNat + k)).toNat < e.hi := by
  obtain ⟨-, -, n', c', hn', hc', -, hcs, hce, -⟩ := hJ
  rw [hn] at hn'; cases hn'
  rw [hc] at hc'; cases hc'
  have hse : scratchEnd < 2 ^ 64 := by decide
  have e1 := jc_toNat (e := e) (q := 4 * n.toNat + k) (by omega)
  refine ⟨by unfold Obj.HasSlot; omega, e1, ?_, ?_⟩
  · rw [e1]; omega
  · rw [e1]; unfold Obj.hi Obj.lo at *; omega

/-- **A cell of the next record is in no footprint.** -/
theorem jrec_not_fp {Γ : Gam} {s : State σ} {e : Obj} (hJ : JrOK Γ s e) (het : e.ty = tJOURNAL)
    (hej : gword s gJ = some e.base) {n c : BitVec 64} (hn : gword s gJn = some n)
    (hc : gword s gJc = some c) (hlt : n.toNat < c.toNat) {k : Nat} (hk : k < 4)
    (o : Obj) (ho : o ∈ Γ) : ¬ (guestHooksJ (σ := σ)).fp Γ s o (jc e.base (4 * n.toNat + k)) := by
  have hG := hJ.2.1
  have he := hJ.1
  obtain ⟨-, -, h1, h2⟩ := jrec_in hJ hn hc hlt hk
  intro hf
  rcases hf with hf | ⟨ht, -, hjc⟩
  · cases hk' : hkOf o.ty with
    | ev =>
      obtain ⟨⟨-, hGo, -⟩, k', hkk, hae⟩ := (gfp_ev hk').1 hf
      have hto := hkOf_ev hk'
      obtain ⟨-, h3, h4⟩ := scratch_cell hGo ho (by rw [hto]; rfl)
        (k := k') (by have := Hooks.ev_size hGo ho hto; have := sm_le hkk; omega)
      rw [← hae] at h3 h4
      have := gam_eq hG he ho h1 h2 h3 h4
      subst this
      rw [het] at hto
      exact absurd hto (by decide)
    | tab =>
      obtain ⟨hw, hr, -⟩ := (gfp_tab hk').1 hf
      obtain ⟨x, hx, -, hxt, h3, h4⟩ := tab_obj hw hk' hr
      have := gam_eq hG he hx h1 h2 h3 h4
      subst this
      rw [het] at hxt
      exact tJ_not_tab hxt
    | none => exact gfp_none hk' hf
  · obtain ⟨hgo, n', hn', q, hq, hqa⟩ := hjc
    rw [hej] at hgo
    have hb : o.base = e.base := (Option.some.inj hgo).symm
    have hoe := base_eq hG he ho hb
    subst hoe
    rw [hn] at hn'; cases hn'
    obtain ⟨-, -, n'', c', hn'', hc', -, hcs, hce, -⟩ := hJ
    rw [hn] at hn''; cases hn''
    rw [hc] at hc'; cases hc'
    have hse : scratchEnd < 2 ^ 64 := by decide
    have e1 := jc_toNat (e := o) (q := 4 * n.toNat + k) (by omega)
    have e2 := jc_toNat (e := o) (q := q) (by omega)
    have := congrArg BitVec.toNat hqa
    rw [e1, e2] at this
    omega

/-! ## A store into the next record -/

theorem tJ_untagged : guestC.tags.lookup tJOURNAL = none := by decide

/-- **A store into a cell of the next record** keeps the tracking, when the cell is in `PW`. -/
theorem trk_jstore {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {PW : BitVec 64 → Prop} {Γ : Gam}
    {t : State σ} (h : Struct.Trk guestC guestHooksJ Γ0 s0 p0 PW Γ t) {e0 : Obj} (he0 : e0 ∈ Γ0)
    (het : e0.ty = tJOURNAL) (hej : gword t gJ = some e0.base) {n c : BitVec 64}
    (hn : gword t gJn = some n) (hc : gword t gJc = some c) (hlt : n.toNat < c.toNat) {k : Nat}
    (hk : k < 4) (hPW : PW (jc e0.base (4 * n.toNat + k))) (x : BitVec 64) :
    Struct.Trk guestC guestHooksJ Γ0 s0 p0 PW Γ
      { t with memory := Spec.Inv.upd t.memory (jc e0.base (4 * n.toNat + k)) x } := by
  obtain ⟨p, hp, hm, hx, hnf, hG, hmod, hpg, hd, hbe⟩ := h
  obtain ⟨e, he, hb, ht, -⟩ := hx e0 he0
  have het' : e.ty = tJOURNAL := ht.trans het
  have hej' : gword t gJ = some e.base := by rw [hb]; exact hej
  have hG0 := hG
  obtain ⟨pG, hpG, hord, hL, -, -, -, hW⟩ := hG0
  have hJ : JrOK Γ t e := (hW e he).2 het' hej'
  have hjb : jc e0.base (4 * n.toNat + k) = jc e.base (4 * n.toNat + k) := by rw [hb]
  obtain ⟨hks, -, h1, h2⟩ := jrec_in hJ hn hc hlt hk
  set a := jc e0.base (4 * n.toNat + k) with ha
  have hGt : G guestC guestHooksJ Γ { t with memory := Spec.Inv.upd t.memory a x } := by
    refine G_frame_prot guestHooksJ_lawful hG rfl (fun _ _ _ => rfl) (fun _ _ => rfl) rfl rfl
      (R := fun b => b = a) (fun b hb' => Spec.Inv.upd_ne hb') ?_ ?_ ?_
    · rintro b rfl
      exact ⟨e, he, 4 * n.toNat + k, hks, by rw [het']; exact journal_prot _, by rw [hjb]; rfl⟩
    · intro o ho htg hob
      have hpos := (hL.1 o ho).2.2.1
      have hob' : o.base = jc e.base (4 * n.toNat + k) := hob.trans hjb
      have h3 : o.lo ≤ (jc e.base (4 * n.toNat + k)).toNat := by unfold Obj.lo; rw [hob']
      have h4 : (jc e.base (4 * n.toNat + k)).toNat < o.hi := by unfold Obj.hi; rw [hob']; omega
      have := gam_eq hJ.2.1 he ho h1 h2 h3 h4
      subst this
      rw [het', tJ_untagged] at htg
      simp at htg
    · rintro o ho ⟨b, rfl, hf⟩
      rw [hjb] at hf
      exact absurd hf (jrec_not_fp hJ het' hej' hn hc hlt hk o ho)
  refine ⟨p, hp, hm, hx, hnf, hGt, ?_, hpg, hd, hbe⟩
  intro b hbn
  have hba : b ≠ a := fun e' => hbn (Or.inr (Or.inr (e' ▸ hPW)))
  show Spec.Inv.upd t.memory a x b = s0.memory b
  rw [Spec.Inv.upd_ne hba]
  exact hmod b hbn

/-! ## Raising `journal_n` -/

theorem add1_toNat {J c : BitVec 64} (h : J.toNat < c.toNat) :
    (J + BitVec.ofNat 64 1).toNat = J.toNat + 1 := by
  have := c.isLt
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by decide : 1 < 2 ^ 64),
    Nat.mod_eq_of_lt (by omega)]

/-- **Raising `journal_n` by one keeps `G`** for the journal family, when the record at the old
`journal_n` is a valid entry and lies below `journal_cap`. -/
theorem G_jn_inc {Γ : Gam} {u : State σ} (hG : G guestC guestHooksJ Γ u) {J : BitVec 64}
    (hJ : u.globals.lookup gJn = some (.val (.word J))) {e : Obj} (he : e ∈ Γ)
    (hej : gword u gJ = some e.base) (hlt : ∀ c : BitVec 64, gword u gJc = some c → J.toNat < c.toNat)
    (hent : JEnt Γ u.memory e.base J.toNat) :
    G guestC guestHooksJ Γ (setKvarHOLFinite .global gJn (.val (.word (J + BitVec.ofNat 64 1))) u) := by
  have hgw : ∀ g, g ≠ gJn →
      gword (setKvarHOLFinite .global gJn (.val (.word (J + BitVec.ofNat 64 1))) u) g = gword u g :=
    fun g h => gword_setG_ne h
  obtain ⟨p, hp, hord, hL, hF, hT, hGl, hW⟩ := hG
  have hpt : ptrsOf (setKvarHOLFinite .global gJn (.val (.word (J + BitVec.ofNat 64 1))) u) = ptrsOf u := by
    unfold ptrsOf; rw [hgw gHeap (by decide), hgw gFrame (by decide), hgw gScratch (by decide)]
  refine ⟨p, hpt ▸ hp, hord, hL, hF, hT, fun g k hk => ?_, fun o ho => ?_⟩
  · by_cases hg : g = gJn
    · subst hg
      rw [gt_jn] at hk
      cases hk
      exact ⟨J + BitVec.ofNat 64 1, by unfold gword; rw [setG_self], trivial⟩
    · obtain ⟨v, hv, hf⟩ := hGl g k hk
      exact ⟨v, (hgw g hg).trans hv, hf⟩
  · obtain ⟨hw1, hw2⟩ := hW o ho
    refine ⟨guestHooks_glob Γ u _ o hw1 rfl rfl rfl, fun ht hj => ?_⟩
    rw [hgw gJ (by decide)] at hj
    obtain ⟨ho', hGo, n, c, hn, hc, hnc, hcs, hce, hent0⟩ := hw2 ht hj
    have hnJ : n = J := by
      unfold gword at hn; rw [hJ] at hn; cases hn; rfl
    subst hnJ
    have hb : o.base = e.base := Option.some.inj (hj.symm.trans hej)
    have hoe := base_eq hGo he ho' hb
    have hl := hlt c hc
    have e1 := add1_toNat hl
    refine ⟨ho', hGo, n + BitVec.ofNat 64 1, c, by unfold gword; rw [setG_self],
      by rw [hgw gJc (by decide)]; exact hc, by omega, hcs, hce, fun i hi => ?_⟩
    rw [e1] at hi
    by_cases hin : i < n.toNat
    · exact hent0 i hin
    · have : i = n.toNat := by omega
      subst this
      rw [hoe]
      exact hent

/-! ## Tracking across the increment -/

theorem trkJ_of_trk {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {PW : BitVec 64 → Prop}
    {Γ : Gam} {t : State σ} (h : Struct.Trk guestC H Γ0 s0 p0 PW Γ t) : TrkJ H Γ0 s0 p0 PW Γ t := by
  obtain ⟨p, a, b, c, d, e, f, g, i, j⟩ := h
  exact ⟨p, a, b, c, d, e, f, fun x hx _ => g x hx, i, j⟩

/-- Raising `journal_n` in a tracked state. -/
theorem trkJ_inc {Γ0 Γ : Gam} {s0 u : State σ} {p0 : Ptrs} {PW : BitVec 64 → Prop}
    (h : TrkJ guestHooksJ Γ0 s0 p0 PW Γ u) {J : BitVec 64}
    (hJ : u.globals.lookup gJn = some (.val (.word J))) {e : Obj} (he : e ∈ Γ)
    (hej : gword u gJ = some e.base) (hlt : ∀ c : BitVec 64, gword u gJc = some c → J.toNat < c.toNat)
    (hent : JEnt Γ u.memory e.base J.toNat) :
    TrkJ guestHooksJ Γ0 s0 p0 PW Γ
      (setKvarHOLFinite .global gJn (.val (.word (J + BitVec.ofNat 64 1))) u) := by
  obtain ⟨p, hp, hm, hx, hnf, hG, hmod, hpg, hd, hbe⟩ := h
  refine ⟨p, ?_, hm, hx, hnf, G_jn_inc hG hJ he hej hlt hent, hmod, fun g hg hne => ?_, hd, hbe⟩
  · unfold ptrsOf
    rw [gword_setG_ne (by decide), gword_setG_ne (by decide), gword_setG_ne (by decide)]
    exact hp
  · rw [setG_ne hne]; exact hpg g hg hne

/-- The final `SumCore`, when the tracked footprint is `PWp` plus the function's own argument
buffers. -/
theorem sumCore_of_trkJA {H : Hooks σ} {Γ0 Γ : Gam} {s0 t : State σ} {p0 : Ptrs}
    {PWp : BitVec 64 → Prop} {sg : Sig} {vs : List (ValueHOL 64)} {r : PanSemResultExact 64}
    (h : TrkJ H Γ0 s0 p0 (fun a => PWp a ∨ ArgCells sg.params vs a) Γ t)
    (hp0 : ptrsOf s0 = some p0) (hgw : gJn ∈ sg.gw) (hgr : sg.grows = true) (hret : sg.ret = []) :
    ∃ p', SumCore guestC H sg PWp Γ0 s0 vs r t Γ p0 p' := by
  obtain ⟨p, hp, hm, hx, hnf, hG, hmod, hpg, -, -⟩ := h
  refine ⟨p, hp0, hp, hm, hx, hnf, hG, ?_, ?_, ?_, ?_⟩
  · refine hmod.mono fun a ha => ?_
    rcases ha with h | h | h | h
    · exact Or.inl h
    · exact Or.inr (Or.inr (Or.inl h))
    · exact Or.inr (Or.inr (Or.inr h))
    · exact Or.inr (Or.inl h)
  · exact fun g hg hng => hpg g hg (fun e => hng (e ▸ hgw))
  · intro h; rw [hgr] at h; cases h
  · intro v _ i rt w hi _
    rw [hret] at hi; cases hi

end InitECandidate.Solver.MemSafe.HtabEntries
