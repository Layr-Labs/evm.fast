import InitECandidate.Solver.MemSafe.HtabEntries.JSet
import InitECandidate.Solver.MemSafe.Hooks.List

/-!
# The journal entries for any hook family with the journal hook

`JHooks H`: what the journal entries (`state_restore`, `jset`, `jdel`) use of a hook family —
the hook laws, the table hooks, the journal hook (`jr`: the journal object's hook gives
`jrW`), that the next journal record is in no footprint (`notfp`), that a hook survives a change
of the journal globals once its journal clause is re-established (`jn`), and unhooked `tB8` key
copies (`b8`).

* `jHooks_guestJ : JHooks guestHooksJ`, **`jHooks_guestJL : JHooks guestHooksJL`**;
* the generic steps `G_jn_decG`, `G_jn_incG`, `trkJ_jnG`, `trkJ_incG`, `trkJ_localsG`,
  `trk_jstoreG` (the `guestHooksJ` lemmas of `JTrk` / `JStep` / `StateRestore`, for any `H`).

`StateRestoreG.lean`, `JTailG.lean`, `JSetG.lean` are the generic copies of the entries;
`JL.lean` instantiates them for `guestHooksJL`.
-/

set_option maxRecDepth 100000
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.HtabEntries
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- The journal entries' requirements of a hook family. -/
structure JHooks (H : Hooks σ) : Prop where
  lawful : HooksLawful guestC H
  mono : HooksMono guestC H
  htab : HtabHooks H
  jr : ∀ (Γ : Gam) (s : State σ) (o : Obj), H.wf Γ s o → o.ty = tJOURNAL → jrW Γ s o
  notfp : ∀ (Γ : Gam) (s : State σ) (e : Obj), JrOK Γ s e → e.ty = tJOURNAL →
    gword s gJ = some e.base → ∀ n c : BitVec 64, gword s gJn = some n → gword s gJc = some c →
    n.toNat < c.toNat → ∀ k, k < 4 → ∀ o ∈ Γ, ¬ H.fp Γ s o (jc e.base (4 * n.toNat + k))
  jn : ∀ (Γ : Gam) (s s' : State σ) (o : Obj), H.wf Γ s o → s'.memory = s.memory →
    s'.memaddrs = s.memaddrs → s'.be = s.be → (o.ty = tJOURNAL → jrW Γ s' o) → H.wf Γ s' o
  b8 : ∀ (Γ : Gam) (s : State σ) (o : Obj), o.ty = tB8 → H.wf Γ s o

theorem jHooks_guestJ : JHooks (guestHooksJ (σ := σ)) := by
  refine ⟨guestHooksJ_lawful, guestHooksJ_mono, htabHooks_guestJ, fun Γ s o hw ht => hw.2 ht,
    fun Γ s e hJ het hej n c hn hc hlt k hk o ho => jrec_not_fp hJ het hej hn hc hlt hk o ho,
    fun Γ s s' o hw hm hd hbe hj => ⟨guestHooks_glob Γ s s' o hw.1 hm hd hbe, hj⟩, b8_wf⟩

/-- The next journal record is in no footprint of the journal-and-list family. -/
theorem jrec_not_fpL {Γ : Gam} {s : State σ} {e : Obj} (hJ : JrOK Γ s e) (het : e.ty = tJOURNAL)
    (hej : gword s gJ = some e.base) {n c : BitVec 64} (hn : gword s gJn = some n)
    (hc : gword s gJc = some c) (hlt : n.toNat < c.toNat) {k : Nat} (hk : k < 4)
    (o : Obj) (ho : o ∈ Γ) : ¬ (guestHooksJL (σ := σ)).fp Γ s o (jc e.base (4 * n.toNat + k)) := by
  rintro (hf | hf)
  · exact jrec_not_fp hJ het hej hn hc hlt hk o ho hf
  · obtain ⟨-, -, h1, h2⟩ := jrec_in hJ hn hc hlt hk
    obtain ⟨ht, ⟨ho', hG, hok⟩, hcl⟩ := hf
    obtain ⟨-, -, -, -, -, h3, h4⟩ := lcell_in hG ho' ht hok.1 hcl
    have := gam_eq hJ.2.1 hJ.1 ho' h1 h2 h3 h4
    subst this
    rw [het] at ht
    exact tJ_not_lst ht

theorem jHooks_guestJL : JHooks (guestHooksJL (σ := σ)) := by
  refine ⟨guestHooksJL_lawful, guestHooksJL_mono, htabHooks_guestJL, fun Γ s o hw ht => hw.1.2 ht,
    fun Γ s e hJ het hej n c hn hc hlt k hk o ho => jrec_not_fpL hJ het hej hn hc hlt hk o ho,
    fun Γ s s' o hw hm hd hbe hj => ⟨⟨guestHooks_glob Γ s s' o hw.1.1 hm hd hbe, hj⟩, fun ht => ?_⟩,
    fun Γ s o ht => ⟨b8_wf Γ s o ht, fun hl => by rw [ht] at hl; exact absurd hl (by decide)⟩⟩
  obtain ⟨ho, hG, hok⟩ := hw.2 ht
  exact ⟨ho, hG, by rw [hm]; exact hok⟩

section gen
variable {H : Hooks σ}

/-- **Lowering `journal_n` by one keeps `G`.** -/
theorem G_jn_decG (hJH : JHooks H) {Γ : Gam} {u : State σ} (hG : G guestC H Γ u) {J : BitVec 64}
    (hJ : u.globals.lookup gJn = some (.val (.word J))) (h1 : 1 ≤ J.toNat) :
    G guestC H Γ (setKvarHOLFinite .global gJn (.val (.word (J - BitVec.ofNat 64 1))) u) := by
  have hgw : ∀ g, g ≠ gJn →
      gword (setKvarHOLFinite .global gJn (.val (.word (J - BitVec.ofNat 64 1))) u) g = gword u g :=
    fun g h => gword_setG_ne h
  obtain ⟨p, hp, hord, hL, hF, hT, hGl, hW⟩ := hG
  have hpt : ptrsOf (setKvarHOLFinite .global gJn (.val (.word (J - BitVec.ofNat 64 1))) u) = ptrsOf u := by
    unfold ptrsOf; rw [hgw gHeap (by decide), hgw gFrame (by decide), hgw gScratch (by decide)]
  refine ⟨p, hpt ▸ hp, hord, hL, hF, hT, fun g k hk => ?_, fun o ho => ?_⟩
  · by_cases hg : g = gJn
    · subst hg
      rw [gt_jn] at hk
      cases hk
      exact ⟨J - BitVec.ofNat 64 1, by unfold gword; rw [setG_self], trivial⟩
    · obtain ⟨v, hv, hf⟩ := hGl g k hk
      exact ⟨v, (hgw g hg).trans hv, hf⟩
  · refine hJH.jn Γ u _ o (hW o ho) rfl rfl rfl fun ht hj => ?_
    rw [hgw gJ (by decide)] at hj
    obtain ⟨ho', hGo, n, c, hn, hc, hnc, hcs, hce, he⟩ := hJH.jr Γ u o (hW o ho) ht hj
    have hnJ : n = J := by
      unfold gword at hn; rw [hJ] at hn; cases hn; rfl
    subst hnJ
    have e := sub1_toNat h1
    exact ⟨ho', hGo, n - BitVec.ofNat 64 1, c, by unfold gword; rw [setG_self],
      by rw [hgw gJc (by decide)]; exact hc, by omega, hcs, hce, fun i hi => he i (by omega)⟩

/-- **Raising `journal_n` by one keeps `G`** when the record at the old `journal_n` is a valid
entry below `journal_cap`. -/
theorem G_jn_incG (hJH : JHooks H) {Γ : Gam} {u : State σ} (hG : G guestC H Γ u) {J : BitVec 64}
    (hJ : u.globals.lookup gJn = some (.val (.word J))) {e : Obj} (he : e ∈ Γ)
    (hej : gword u gJ = some e.base) (hlt : ∀ c : BitVec 64, gword u gJc = some c → J.toNat < c.toNat)
    (hent : JEnt Γ u.memory e.base J.toNat) :
    G guestC H Γ (setKvarHOLFinite .global gJn (.val (.word (J + BitVec.ofNat 64 1))) u) := by
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
  · refine hJH.jn Γ u _ o (hW o ho) rfl rfl rfl fun ht hj => ?_
    rw [hgw gJ (by decide)] at hj
    obtain ⟨ho', hGo, n, c, hn, hc, hnc, hcs, hce, hent0⟩ := hJH.jr Γ u o (hW o ho) ht hj
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

variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {PW : BitVec 64 → Prop}

theorem trkJ_jnG (hJH : JHooks H) {Γ : Gam} {u : State σ} (h : TrkJ H Γ0 s0 p0 PW Γ u) {J : BitVec 64}
    (hJ : u.globals.lookup gJn = some (.val (.word J))) (h1 : 1 ≤ J.toNat) :
    TrkJ H Γ0 s0 p0 PW Γ (setKvarHOLFinite .global gJn (.val (.word (J - BitVec.ofNat 64 1))) u) := by
  obtain ⟨p, hp, hm, hx, hnf, hG, hmod, hpg, hd, hbe⟩ := h
  refine ⟨p, ?_, hm, hx, hnf, G_jn_decG hJH hG hJ h1, hmod, fun g hg hne => ?_, hd, hbe⟩
  · unfold ptrsOf
    rw [gword_setG_ne (by decide), gword_setG_ne (by decide), gword_setG_ne (by decide)]
    exact hp
  · rw [setG_ne hne]; exact hpg g hg hne

theorem trkJ_localsG (hJH : JHooks H) {Γ : Gam} {u : State σ} (h : TrkJ H Γ0 s0 p0 PW Γ u)
    (l : HolFiniteMapExact MlS (ValueHOL 64)) : TrkJ H Γ0 s0 p0 PW Γ { u with locals := l } :=
  trkJ_congr hJH.lawful h rfl rfl rfl rfl

theorem trkJ_incG (hJH : JHooks H) {Γ : Gam} {u : State σ} (h : TrkJ H Γ0 s0 p0 PW Γ u) {J : BitVec 64}
    (hJ : u.globals.lookup gJn = some (.val (.word J))) {e : Obj} (he : e ∈ Γ)
    (hej : gword u gJ = some e.base) (hlt : ∀ c : BitVec 64, gword u gJc = some c → J.toNat < c.toNat)
    (hent : JEnt Γ u.memory e.base J.toNat) :
    TrkJ H Γ0 s0 p0 PW Γ (setKvarHOLFinite .global gJn (.val (.word (J + BitVec.ofNat 64 1))) u) := by
  obtain ⟨p, hp, hm, hx, hnf, hG, hmod, hpg, hd, hbe⟩ := h
  refine ⟨p, ?_, hm, hx, hnf, G_jn_incG hJH hG hJ he hej hlt hent, hmod, fun g hg hne => ?_, hd, hbe⟩
  · unfold ptrsOf
    rw [gword_setG_ne (by decide), gword_setG_ne (by decide), gword_setG_ne (by decide)]
    exact hp
  · rw [setG_ne hne]; exact hpg g hg hne

/-- A store into a cell of the next record keeps the tracking, when the cell is in `PW`. -/
theorem trk_jstoreG (hJH : JHooks H) {Γ : Gam} {t : State σ}
    (h : Struct.Trk guestC H Γ0 s0 p0 PW Γ t) {e0 : Obj} (he0 : e0 ∈ Γ0)
    (het : e0.ty = tJOURNAL) (hej : gword t gJ = some e0.base) {n c : BitVec 64}
    (hn : gword t gJn = some n) (hc : gword t gJc = some c) (hlt : n.toNat < c.toNat) {k : Nat}
    (hk : k < 4) (hPW : PW (jc e0.base (4 * n.toNat + k))) (x : BitVec 64) :
    Struct.Trk guestC H Γ0 s0 p0 PW Γ
      { t with memory := Spec.Inv.upd t.memory (jc e0.base (4 * n.toNat + k)) x } := by
  obtain ⟨p, hp, hm, hx, hnf, hG, hmod, hpg, hd, hbe⟩ := h
  obtain ⟨e, he, hb, ht, -⟩ := hx e0 he0
  have het' : e.ty = tJOURNAL := ht.trans het
  have hej' : gword t gJ = some e.base := by rw [hb]; exact hej
  have hG0 := hG
  obtain ⟨pG, hpG, hord, hL, -, -, -, hW⟩ := hG0
  have hJ : JrOK Γ t e := hJH.jr Γ t e (hW e he) het' hej'
  have hjb : jc e0.base (4 * n.toNat + k) = jc e.base (4 * n.toNat + k) := by rw [hb]
  obtain ⟨hks, -, h1, h2⟩ := jrec_in hJ hn hc hlt hk
  set a := jc e0.base (4 * n.toNat + k) with ha
  have hGt : G guestC H Γ { t with memory := Spec.Inv.upd t.memory a x } := by
    refine G_frame_prot hJH.lawful hG rfl (fun _ _ _ => rfl) (fun _ _ => rfl) rfl rfl
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
      exact absurd hf (hJH.notfp Γ t e hJ het' hej' n c hn hc hlt k hk o ho)
  refine ⟨p, hp, hm, hx, hnf, hGt, ?_, hpg, hd, hbe⟩
  intro b hbn
  have hba : b ≠ a := fun e' => hbn (Or.inr (Or.inr (e' ▸ hPW)))
  show Spec.Inv.upd t.memory a x b = s0.memory b
  rw [Spec.Inv.upd_ne hba]
  exact hmod b hbn

end gen

end InitECandidate.Solver.MemSafe.HtabEntries
