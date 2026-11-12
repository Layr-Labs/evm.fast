import InitECandidate.Solver.MemSafe.Hooks.Laws
import InitECandidate.Solver.MemSafe.HtabEntries.New

/-!
# The journal hook

`guestHooksJ` is `guestHooks` plus an invariant on the journal array (the `tJOURNAL` object the
protected global `journal` points to): `journal_n ≤ journal_cap`, the array holds `journal_cap`
32-byte records, and every live record `i < journal_n` (`JEnt`) names

* in slot `4 i` a heap table header of `Γ` (`hkOf .tab`, not the scratch type `tHTs20`),
* in slot `4 i + 1` a key copy: a `tB8` (all-scalar) object of `Γ` of at least the table's key
  length,
* in slot `4 i + 3`, when the flag in slot `4 i + 2` is set, a value fitting the table's value
  kind.

That is what `state_restore` needs to call `htab_set(t, key, value)` / `htab_del(t, key)` on
every popped record. The footprint is the live records' cells (`jfp`), the hook also reads the
protected globals `journal`, `journal_n`, `journal_cap`. Every other object keeps its
`guestHooks` hook, so the existing laws are reused; the dependency relation is
`refGJ = refG ∨ jref` (a journal depends on its tables, key copies and pointer values, all heap
objects).

Laws: `guestHooksJ_lawful`, `guestHooksJ_mono`, `guestHooksJ_shrinkR`, `guestHooksJ_ev`,
`guestHooksJ_hookEV`, `guestHooksJ_hookCK`, **`guestHooksJ_guest : GuestHooks guestHooksJ`**,
`guestHooksJ_ckWf`, `guestHooksJ_glob`, `frameCfg_guestHooksJ`, `drvCfg_guestHooksJ`,
**`htabHooks_guestJ`**.
-/

namespace InitECandidate.Solver.MemSafe.Hooks
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Struct InitECandidate.Solver.MemSafe.HtabEntries
open InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.Spec

variable {σ : Type}

def gJ : MlS := nm "journal"
def gJn : MlS := nm "journal_n"
def gJc : MlS := nm "journal_cap"

theorem gJ_pg : gJ ∈ guestC.PG := by decide
theorem gJn_pg : gJn ∈ guestC.PG := by decide
theorem gJc_pg : gJc ∈ guestC.PG := by decide

/-- Cell `q` of the object at base `b`. -/
def jc (b : BitVec 64) (q : Nat) : BitVec 64 := b + BitVec.ofNat 64 (8 * q)

theorem cell_jc (o : Obj) (q : Nat) : o.cell q = jc o.base q := rfl

/-- Record `i` of the journal at base `b`. -/
def JEnt (Γ : Gam) (m : Mem) (b : BitVec 64) (i : Nat) : Prop :=
  ∃ x ∈ Γ, x.base = rd m (jc b (4 * i)) ∧ hkOf x.ty = .tab ∧ x.ty ≠ tHTs20 ∧
    (∃ y ∈ Γ, y.base = rd m (jc b (4 * i + 1)) ∧ y.ty = tB8 ∧ htKL x.ty ≤ y.size) ∧
    (rd m (jc b (4 * i + 2)) ≠ 0 → Fits Γ (valK x.ty) (rd m (jc b (4 * i + 3))))

/-- The journal invariant of the array `o`. -/
def JrOK (Γ : Gam) (s : State σ) (o : Obj) : Prop :=
  o ∈ Γ ∧ GamOK Γ ∧ ∃ n c : BitVec 64, gword s gJn = some n ∧ gword s gJc = some c ∧
    n.toNat ≤ c.toNat ∧ 32 * c.toNat ≤ o.size ∧ o.lo + 32 * c.toNat ≤ scratchEnd ∧
    ∀ i, i < n.toNat → JEnt Γ s.memory o.base i

/-- The journal hook: the invariant, for the array the global `journal` points to. -/
def jrW (Γ : Gam) (s : State σ) (o : Obj) : Prop := gword s gJ = some o.base → JrOK Γ s o

/-- The cells of the live records. -/
def JCell (s : State σ) (o : Obj) (a : BitVec 64) : Prop :=
  gword s gJ = some o.base ∧ ∃ n : BitVec 64, gword s gJn = some n ∧ ∃ q, q < 4 * n.toNat ∧ a = jc o.base q

def jfp (Γ : Gam) (s : State σ) (o : Obj) (a : BitVec 64) : Prop :=
  o.ty = tJOURNAL ∧ jrW Γ s o ∧ JCell s o a

def gwfJ (Γ : Gam) (s : State σ) (o : Obj) : Prop := gwf Γ s o ∧ (o.ty = tJOURNAL → jrW Γ s o)
def gfpJ (Γ : Gam) (s : State σ) (o : Obj) (a : BitVec 64) : Prop := gfp Γ s o a ∨ jfp Γ s o a

/-- **The guest hook family with the journal hook.** -/
def guestHooksJ : Hooks σ := ⟨gwfJ, gfpJ⟩

/-- The journal's dependencies: its tables, key copies and pointer values. -/
def jref (Γ : Gam) (s : State σ) (o : Obj) (b : BitVec 64) : Prop :=
  o.ty = tJOURNAL ∧ gword s gJ = some o.base ∧ ∃ n : BitVec 64, gword s gJn = some n ∧
    ∃ i, i < n.toNat ∧ (b = rd s.memory (jc o.base (4 * i)) ∨ b = rd s.memory (jc o.base (4 * i + 1)) ∨
      (rd s.memory (jc o.base (4 * i + 2)) ≠ 0 ∧ ∃ x ∈ Γ, x.base = rd s.memory (jc o.base (4 * i)) ∧
        valK x.ty ≠ .scalar ∧ b = rd s.memory (jc o.base (4 * i + 3))))

def refGJ (Γ : Gam) (s : State σ) (o : Obj) (b : BitVec 64) : Prop := refG Γ s o b ∨ jref Γ s o b

theorem guestHooksJ_wf (Γ : Gam) (s : State σ) (o : Obj) :
    (guestHooksJ (σ := σ)).wf Γ s o = gwfJ Γ s o := rfl
theorem guestHooksJ_fp (Γ : Gam) (s : State σ) (o : Obj) :
    (guestHooksJ (σ := σ)).fp Γ s o = gfpJ Γ s o := rfl

/-! ## Facts -/

theorem tJ_ne_ev : tJOURNAL ≠ tEV := by decide
theorem tJ_ne_ck : tJOURNAL ≠ tCK := by decide
theorem tJ_not_tab : ¬ IsTabTy tJOURNAL := by
  rintro (h | h | h)
  · revert h; decide
  · revert h; decide
  · revert h; decide

theorem gword_pg {s s' : State σ} (hpg : ∀ g ∈ guestC.PG, s'.globals.lookup g = s.globals.lookup g)
    {g : MlS} (hg : g ∈ guestC.PG) : gword s' g = gword s g := by
  unfold gword; rw [hpg g hg]

/-- A live record cell lies in the journal object. -/
theorem jcell_in {Γ : Gam} {s : State σ} {o : Obj} (h : JrOK Γ s o) {a : BitVec 64}
    (hc : JCell s o a) :
    ∃ q, o.HasSlot q ∧ a = o.cell q ∧ o.lo ≤ a.toNat ∧ a.toNat < o.hi := by
  obtain ⟨-, -, n, c, hn, -, hnc, hcs, hce, -⟩ := h
  obtain ⟨-, n', hn', q, hq, rfl⟩ := hc
  rw [hn] at hn'
  cases hn'
  have hse : scratchEnd < 2 ^ 64 := by decide
  have e : (jc o.base q).toNat = o.lo + 8 * q := cellN (x := o) (k := q) (by omega)
  refine ⟨q, by unfold Obj.HasSlot; omega, rfl, ?_, ?_⟩
  · rw [e]; omega
  · rw [e]; unfold Obj.hi Obj.lo at *; omega

theorem jcell_obj {Γ : Gam} {s : State σ} {o y : Obj} (h : JrOK Γ s o) {a : BitVec 64}
    (hc : JCell s o a) (hy : y ∈ Γ) (h1 : y.lo ≤ a.toNat) (h2 : a.toNat < y.hi) : y = o := by
  obtain ⟨q, -, -, h3, h4⟩ := jcell_in h hc
  exact gam_eq h.2.1 hy h.1 h1 h2 h3 h4

theorem jcell_congr {s s' : State σ} {o : Obj} {a : BitVec 64} (hJ : gword s' gJ = gword s gJ)
    (hn : gword s' gJn = gword s gJn) : JCell s' o a ↔ JCell s o a := by
  unfold JCell; rw [hJ, hn]

theorem jent_congr {Γ : Gam} {m m' : Mem} {b : BitVec 64} {i : Nat}
    (h : ∀ k, k < 4 → rd m' (jc b (4 * i + k)) = rd m (jc b (4 * i + k))) (he : JEnt Γ m b i) :
    JEnt Γ m' b i := by
  have h0 := h 0 (by decide)
  have h1 := h 1 (by decide)
  have h2 := h 2 (by decide)
  have h3 := h 3 (by decide)
  simp only [Nat.add_zero] at h0
  unfold JEnt at he ⊢
  rw [h0, h1, h2, h3]
  exact he

theorem jent_ext {Γ Γ' : Gam} (hx : Ext Γ Γ') {m : Mem} {b : BitVec 64} {i : Nat}
    (he : JEnt Γ m b i) : JEnt Γ' m b i := by
  obtain ⟨x, hxΓ, hxb, hxk, hxs, ⟨y, hyΓ, hyb, hyt, hys⟩, hv⟩ := he
  obtain ⟨x', hx', hxb', hxt', -⟩ := hx x hxΓ
  obtain ⟨y', hy', hyb', hyt', hys'⟩ := hx y hyΓ
  refine ⟨x', hx', hxb'.trans hxb, by rw [hxt']; exact hxk, by rw [hxt']; exact hxs,
    ⟨y', hy', hyb'.trans hyb, hyt'.trans hyt, by rw [hxt']; omega⟩, fun hf => ?_⟩
  rw [hxt']
  exact Struct.fits_ext hx (hv hf)

theorem jrOK_ext {Γ Γ' : Gam} {s : State σ} {o o' : Obj} (h : JrOK Γ s o) (hx : Ext Γ Γ')
    (hG' : GamOK Γ') (ho' : o' ∈ Γ') (hb : o'.base = o.base) : JrOK Γ' s o' := by
  obtain ⟨ho, -, n, c, hn, hc, hnc, hcs, hce, he⟩ := h
  obtain ⟨o'', ho'', hb'', -, hs''⟩ := hx o ho
  have e : o'' = o' := base_eq hG' ho' ho'' (hb''.trans hb.symm)
  subst e
  refine ⟨ho', hG', n, c, hn, hc, hnc, by omega, by unfold Obj.lo at *; rw [hb]; exact hce,
    fun i hi => ?_⟩
  rw [hb]
  exact jent_ext hx (he i hi)

/-! ## The laws -/

theorem guestHooksJ_lawful : HooksLawful guestC (guestHooksJ (σ := σ)) := by
  refine ⟨fun Γ s o a ho hw hf => ?_, fun Γ s s' o hw hd hbe hfp hpg => ?_⟩
  · rcases hf with hf | ⟨ht, hj, hc⟩
    · exact guestHooks_lawful.1 Γ s o a ho hw.1 hf
    · obtain ⟨q, hq, rfl, -⟩ := jcell_in (hj hc.1) hc
      exact ⟨o, ho, q, hq, by rw [ht]; exact journal_prot q, rfl⟩
  · obtain ⟨hw1, hgfp⟩ := guestHooks_lawful.2 Γ s s' o hw.1 hd hbe (fun a h => hfp a (Or.inl h)) hpg
    have eJ := gword_pg hpg gJ_pg
    have eN := gword_pg hpg gJn_pg
    have eC := gword_pg hpg gJc_pg
    have hj' : o.ty = tJOURNAL → jrW Γ s' o := by
      intro ht hj
      rw [eJ] at hj
      obtain ⟨ho, hG, n, c, hn, hc, hnc, hcs, hce, he⟩ := hw.2 ht hj
      refine ⟨ho, hG, n, c, by rw [eN]; exact hn, by rw [eC]; exact hc, hnc, hcs, hce, fun i hi => ?_⟩
      refine jent_congr (fun k hk => ?_) (he i hi)
      unfold rd
      rw [hfp _ (Or.inr ⟨ht, hw.2 ht, hj, n, hn, 4 * i + k, by omega, rfl⟩)]
    refine ⟨⟨hw1, hj'⟩, ?_⟩
    funext a
    apply propext
    show (gfp Γ s' o a ∨ jfp Γ s' o a) ↔ (gfp Γ s o a ∨ jfp Γ s o a)
    rw [show gfp Γ s' o a = gfp Γ s o a from congrFun hgfp a]
    constructor
    · rintro (h | ⟨ht, -, hc⟩)
      · exact Or.inl h
      · exact Or.inr ⟨ht, hw.2 ht, (jcell_congr eJ eN).1 hc⟩
    · rintro (h | ⟨ht, -, hc⟩)
      · exact Or.inl h
      · exact Or.inr ⟨ht, hj' ht, (jcell_congr eJ eN).2 hc⟩

theorem guestHooksJ_mono : HooksMono guestC (guestHooksJ (σ := σ)) := by
  intro Γ Γ' s p o o' hL hx ho ho' hb ht hw
  refine ⟨guestHooks_mono Γ Γ' s p o o' hL hx ho ho' hb ht hw.1, fun ht' hj => ?_⟩
  rw [hb] at hj
  exact jrOK_ext (hw.2 (ht ▸ ht') hj) hx (gamOK_of_layout hL) ho' hb

theorem guestHooksJ_shrinkR : HooksShrinkR guestC (guestHooksJ (σ := σ)) refGJ := by
  intro Γ Γs s o hsub ho hw hc
  refine ⟨guestHooks_shrinkR Γ Γs s o hsub ho hw.1 (fun x hx h => hc x hx (Or.inl h)), fun ht hj => ?_⟩
  obtain ⟨-, hG, n, c, hn, hcap, hnc, hcs, hce, he⟩ := hw.2 ht hj
  refine ⟨ho, gamOK_sub hG hsub, n, c, hn, hcap, hnc, hcs, hce, fun i hi => ?_⟩
  obtain ⟨x, hxΓ, hxb, hxk, hxs, ⟨y, hyΓ, hyb, hyt, hys⟩, hv⟩ := he i hi
  have rf : ∀ z ∈ Γ, (z.base = rd s.memory (jc o.base (4 * i)) ∨
      z.base = rd s.memory (jc o.base (4 * i + 1)) ∨
      (rd s.memory (jc o.base (4 * i + 2)) ≠ 0 ∧ ∃ x ∈ Γ, x.base = rd s.memory (jc o.base (4 * i)) ∧
        valK x.ty ≠ .scalar ∧ z.base = rd s.memory (jc o.base (4 * i + 3)))) → z ∈ Γs :=
    fun z hz h => hc z hz (Or.inr ⟨ht, hj, n, hn, i, hi, h⟩)
  refine ⟨x, rf x hxΓ (Or.inl hxb), hxb, hxk, hxs, ⟨y, rf y hyΓ (Or.inr (Or.inl hyb)), hyb, hyt, hys⟩,
    fun hf => ?_⟩
  by_cases hk : valK x.ty = .scalar
  · rw [hk]; trivial
  · exact fits_shrink_of (hv hf) fun z hz hzb => rf z hz (Or.inr (Or.inr ⟨hf, x, hxΓ, hxb, hk, hzb⟩))

theorem guestHooksJ_ev : EvHook guestC (guestHooksJ (σ := σ)) Shards.sty := by
  refine ⟨fun Γ s o ho ht hw => guestHooks_ev.get Γ s o ho ht hw.1,
    fun Γ s t o ho ht hw hs hd hbe hpg hfp => ⟨guestHooks_ev.put Γ s t o ho ht hw.1 hs hd hbe hpg
      (fun a h hn => hfp a (Or.inl h) hn), fun ht' => absurd (ht'.symm.trans ht) tJ_ne_ev⟩,
    fun Γ s o o' a ho ho' ht' hw hf hsm => ?_,
    fun Γ s o ht => ⟨guestHooks_ev.stk_wf Γ s o ht, fun ht' => absurd (ht'.symm.trans ht) (by decide)⟩,
    fun Γ s o ht => ⟨guestHooks_ev.mem_wf Γ s o ht, fun ht' => absurd (ht'.symm.trans ht) (by decide)⟩⟩
  rcases hf with hf | ⟨ht, hj, hc⟩
  · exact guestHooks_ev.loc Γ s o o' a ho ho' ht' hw.1 hf hsm
  · have hJ := hj hc.1
    obtain ⟨k', hk', rfl⟩ := hsm
    have ht'' : o'.ty = tEV := ht'
    obtain ⟨-, h3, h4⟩ := scratch_cell hJ.2.1 ho' (by rw [ht'']; rfl)
      (k := k') (by have := ev_size hJ.2.1 ho' ht''; have := sm_le hk'; omega)
    exact (jcell_obj hJ hc ho' h3 h4).symm

/-- A live journal cell is no EV / CK slot. -/
theorem jfp_evck {Γ : Gam} {s : State σ} {o y : Obj} {a : BitVec 64} (hf : jfp Γ s o a) (hy : y ∈ Γ)
    (hty : y.ty = tEV ∨ y.ty = tCK) {k : Nat} (hks : 8 * k + 8 ≤ y.size) (ha : a = y.cell k) : False := by
  obtain ⟨ht, hj, hc⟩ := hf
  have hJ := hj hc.1
  obtain ⟨-, h3, h4⟩ := scratch_cell hJ.2.1 hy (by rcases hty with h | h <;> rw [h] <;> rfl) hks
  rw [← ha] at h3 h4
  have e := jcell_obj hJ hc hy h3 h4
  subst e
  rcases hty with h | h
  · exact tJ_ne_ev (ht.symm.trans h)
  · exact tJ_ne_ck (ht.symm.trans h)

theorem guestHooksJ_hookEV : ∀ (Γ : Gam) (s : State σ) (o o' : Obj), o' ∈ Γ → o'.ty = tEV →
    ∀ j ∈ evDriverSlots16, ¬ (guestHooksJ (σ := σ)).fp Γ s o (o'.cell j) := by
  intro Γ s o o' ho' ht' j hj hf
  rcases hf with hf | hf
  · exact guestHooks_hookEV Γ s o o' ho' ht' j hj hf
  · have hG := (hf.2.1 hf.2.2.1).2.1
    exact jfp_evck hf ho' (Or.inl ht') (by have := ev_size hG ho' ht'; have := drv_le hj; omega) rfl

theorem guestHooksJ_hookCK : ∀ (Γ : Gam) (s : State σ) (o o' : Obj), o' ∈ Γ → o'.ty = tCK →
    ∀ j, j < 13 → ¬ (guestHooksJ (σ := σ)).fp Γ s o (o'.cell j) := by
  intro Γ s o o' ho' ht' j hj hf
  rcases hf with hf | hf
  · exact guestHooks_hookCK Γ s o o' ho' ht' j hj hf
  · have hG := (hf.2.1 hf.2.2.1).2.1
    have hm := (hG.1 o' ho').2.2.2.1
    rw [ht'] at hm
    have : (guestC.ty tCK).minSz = 104 := rfl
    exact jfp_evck hf ho' (Or.inr ht') (by omega) rfl

/-- **The journal family meets the fold's hook hypothesis.** -/
theorem guestHooksJ_guest : Shards.GuestHooks (guestHooksJ (σ := σ)) :=
  ⟨guestHooksJ_ev, guestHooksJ_mono, guestHooksJ_hookEV, guestHooksJ_hookCK⟩

theorem guestHooksJ_ckWf : ∀ (Γ : Gam) (s : State σ) (o : Obj), o.ty = tCK →
    (guestHooksJ (σ := σ)).wf Γ s o := fun Γ s o ht =>
  ⟨guestHooks_ckWf Γ s o ht, fun ht' => absurd (ht'.symm.trans ht) tJ_ne_ck⟩

/-- The hooks read memory, domain, byte order and the journal's protected globals. -/
theorem guestHooksJ_glob : ∀ (Γ : Gam) (s t : State σ) (o : Obj), (guestHooksJ (σ := σ)).wf Γ s o →
    t.memory = s.memory → t.memaddrs = s.memaddrs → t.be = s.be →
    (∀ g ∈ guestC.PG, g ≠ nm "ev" → g ≠ nm "cur_cont" → t.globals.lookup g = s.globals.lookup g) →
    (guestHooksJ (σ := σ)).wf Γ t o := by
  intro Γ s t o hw hm hd hbe hpg
  refine ⟨guestHooks_glob Γ s t o hw.1 hm hd hbe, fun ht hj => ?_⟩
  have e : ∀ g, g ∈ guestC.PG → g ≠ nm "ev" → g ≠ nm "cur_cont" → gword t g = gword s g :=
    fun g hg h1 h2 => by unfold gword; rw [hpg g hg h1 h2]
  have eJ := e gJ gJ_pg (by decide) (by decide)
  have eN := e gJn gJn_pg (by decide) (by decide)
  have eC := e gJc gJc_pg (by decide) (by decide)
  rw [eJ] at hj
  obtain ⟨ho, hG, n, c, hn, hc, hnc, hcs, hce, he⟩ := hw.2 ht hj
  exact ⟨ho, hG, n, c, by rw [eN]; exact hn, by rw [eC]; exact hc, hnc, hcs, hce,
    fun i hi => by rw [hm]; exact he i hi⟩

theorem frameCfg_guestHooksJ : FrameCfg guestC (guestHooksJ (σ := σ)) tEV tCK :=
  Annot.frameCfg_guest guestHooksJ_lawful guestHooksJ_hookEV guestHooksJ_hookCK

theorem drvCfg_guestHooksJ : DrvCfg guestC (guestHooksJ (σ := σ)) tEV tCK :=
  Annot.drvCfg_guest frameCfg_guestHooksJ guestHooksJ_mono guestHooksJ_ckWf
    (fun Γ s t o hw hm hd hbe hpg => guestHooksJ_glob Γ s t o hw hm hd hbe hpg)

/-- **The table entries' hook requirements** hold for the journal family. -/
theorem htabHooks_guestJ : HtabHooks (guestHooksJ (σ := σ)) := by
  have hT := htabHooks_guest (σ := σ)
  refine ⟨fun Γ s o ho hG hk ht => ⟨hT.make Γ s o ho hG hk ht, fun ht' => ?_⟩,
    fun Γ s o ht => ⟨hT.arr Γ s o ht, fun ht' => (tJ_not_tab (Or.inr (ht' ▸ ht))).elim⟩,
    fun Γ s o hk hw => hT.get Γ s o hk hw.1, fun Γ s o o2 a hk hw ho2 hne hw2 hf ha => ?_⟩
  · have := hkOf_tab hk
    rw [ht'] at this
    exact absurd this (by decide)
  · rcases hf with hf | hf
    · exact hT.sep Γ s o o2 a hk hw.1 ho2 hne hw2.1 hf ha
    · have hw' := hT.get Γ s o hk hw.1
      obtain ⟨x, hx, -, hxt, h1, h2⟩ := tab_obj hw' hk ha
      obtain ⟨ht2, hj, hc⟩ := hf
      have e := jcell_obj (hj hc.1) hc hx h1 h2
      subst e
      exact tJ_not_tab (ht2 ▸ hxt)

end InitECandidate.Solver.MemSafe.Hooks
