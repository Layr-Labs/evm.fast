import InitECandidate.Solver.MemSafe.WaveHelpers.Run
import InitECandidate.Solver.MemSafe.WaveHelpers.RlpCount

set_option autoImplicit false

/-!
# `rlp_list_to_slices`: the capability summary

```
fun {1,1} rlp_list_to_slices(1 p, 1 len) {
  var 1 count = rlp_list_count(p, len);
  var 1 arr = alloc(count * 16);
  var i = 0; var off = 0;
  while i <+ count {
    var 1 total = rlp_item_total_unchecked(p + off);
    st arr + i * 16, p + off; st arr + i * 16 + 8, total;
    off = off + total; i = i + 1; }
  return <arr, count>; }
```

For any `p`, `len`: `count ≤ 2^42` (`funSpec_count_le`, under `DomLow X`), so `count * 16`
does not wrap and `alloc` returns a fresh block `[arr, arr + 16 count)`; every store of the
loop hits a cell of it (`i < count`). The callees keep the checker's activation invariant
(`heap_call`): `rlp_list_count` and `rlp_item_total_unchecked` by their (checker-produced)
capability summaries, `alloc` by the built-in one. The block stays outside `Γ` across the
loop's calls (`notInObj_after`).

`csumm_rlp_list_to_slices`: `CSumm` for `⟨[.any, .any], [], [], true⟩`, given the summaries of
`rlp_list_count` (`[.any, .any]`) and `rlp_item_total_unchecked` (`[.any]`).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.WaveHelpers
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
open InitECandidate.Solver.MemSafe.Helpers (store1_mod abn_good Locals)
open InitECandidate.Solver.Spec.Mpt.Leaves (slBody slLoopBody slCond code_rlp_list_to_slices cond_lt)

variable {σ : Type} {X : Ctx 64}

def sigRLS (g : Bool) : Sig := ⟨[.any, .any], [], [], g⟩

/-- Every good non-abortive result keeps the activation invariant. -/
def HQ (a : Act σ) (Γ0 : Gam) (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  ∀ r', r = some r' → ¬ Abortive r' → ∃ Γ' p', Ext Γ0 Γ' ∧ Heap a Γ' p' t

theorem hq_locals {a : Act σ} (hH : HooksLawful a.C a.H) {Γ0 : Gam}
    {r : Option (PanSemResultExact 64)} {t : State σ} (L : Locals) (h : HQ a Γ0 r t) :
    HQ a Γ0 r { t with locals := L } := by
  intro r' hr hna
  obtain ⟨Γ', p', he, hh⟩ := h r' hr hna
  exact ⟨Γ', p', he, heap_congr (s := t) hH rfl rfl rfl rfl hh⟩

/-- The fresh block `[Ar, Ar + 16 C)` outside the current `Γ` and allocated. -/
def LH (a : Act σ) (Γ0 : Gam) (Ar C : BitVec 64) (u : State σ) : Prop :=
  ∃ Γ q, Ext Γ0 Γ ∧ Heap a Γ q u ∧ ∀ x : BitVec 64, Overlap Ar.toNat (16 * C.toNat) x →
    ¬ InObj Γ x.toNat ∧ q.Allocated x.toNat

theorem lh_congr {a : Act σ} (hH : HooksLawful a.C a.H) {Γ0 : Gam} {Ar C : BitVec 64}
    {s t : State σ} (hm : t.memory = s.memory) (hg : t.globals = s.globals)
    (hd : t.memaddrs = s.memaddrs) (hb : t.be = s.be) (h : LH a Γ0 Ar C s) : LH a Γ0 Ar C t := by
  obtain ⟨Γ, q, he, hh, hblk⟩ := h
  exact ⟨Γ, q, he, heap_congr hH hm hg hd hb hh, hblk⟩

theorem hq_of_lh {a : Act σ} {Γ0 : Gam} {Ar C : BitVec 64} {t : State σ}
    (h : LH a Γ0 Ar C t) (r : Option (PanSemResultExact 64)) : HQ a Γ0 r t := by
  intro _ _ _
  obtain ⟨Γ, q, he, hh, -⟩ := h
  exact ⟨Γ, q, he, hh⟩

/-- The block survives a call. -/
theorem lh_call {a : Act σ} {Γ0 Γ Γ' : Gam} {q q' : Ptrs} {Ar C : BitVec 64} {s st : State σ}
    (hh : Heap a Γ q s) (hblk : ∀ x : BitVec 64, Overlap Ar.toNat (16 * C.toNat) x →
      ¬ InObj Γ x.toNat ∧ q.Allocated x.toNat)
    (he : Ext Γ0 Γ) (he' : Ext Γ Γ') (hh' : Heap a Γ' q' st) (hm : q.Mono q')
    (hnf : NewFresh Γ Γ' q q') : LH a Γ0 Ar C st :=
  ⟨Γ', q', ext_trans he he', hh', fun x hx =>
    ⟨notInObj_after (heap_ord hh) (heap_ord hh') hm hnf (hblk x hx).1 (hblk x hx).2,
      alloc_mono hm (hblk x hx).2⟩⟩

/-! ## Stores into the block -/

theorem hoareG_st_blk {a : Act σ} (ha : ActOK a X) {Γ0 : Gam} {Ar C : BitVec 64} {L : Locals}
    {ea ev' : ExpHOL 64}
    (hfr : ∀ x : BitVec 64, Overlap Ar.toNat (16 * C.toNat) x → ¬ a.p0.Allocated x.toNat)
    (haddr : ∀ u : State σ, u.locals = L → ∃ w : BitVec 64, ev u ea = some (.val (.word w)) ∧
      (w.toNat % 8 = 0 → Overlap Ar.toNat (16 * C.toNat) w))
    (hval : ∀ u : State σ, u.locals = L → ∀ v, ev u ev' = some v → ∃ x, flattenHOL v = [x]) :
    HoareG σ X (fun u => u.locals = L ∧ LH a Γ0 Ar C u) (.store ea ev')
      (fun r u => r = none ∧ u.locals = L ∧ LH a Γ0 Ar C u) := by
  refine hoareG_store fun u hs ⟨hL, Γ, q, he, hh, hblk⟩ w v mem hw hv hst => ?_
  obtain ⟨x, hx⟩ := hval u hL v hv
  rw [hx] at hst
  obtain ⟨hm, hdom⟩ := store1_mod hst
  have h8 : w.toNat % 8 = 0 := ha.hal w (hs.2.1 ▸ hdom)
  obtain ⟨w', hw', hov⟩ := haddr u hL
  rw [hw'] at hw
  cases hw
  have hov := hov h8
  exact ⟨rfl, hL, Γ, q, he, heap_store_out ha hh hm (hblk _ hov).1 (hfr _ hov), hblk⟩

theorem blk_cell {Ar I C : BitVec 64} {c : Nat} (hc : c < 16) (hI : I.toNat < C.toNat)
    (hAC : Ar.toNat + 16 * C.toNat < 2 ^ 64) :
    (Ar + (I * BitVec.ofNat 64 16 + BitVec.ofNat 64 c)).toNat = Ar.toNat + 16 * I.toNat + c := by
  have e1 : (I * BitVec.ofNat 64 16).toNat = 16 * I.toNat := by
    rw [BitVec.toNat_mul, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 16) (by decide),
      Nat.mod_eq_of_lt (by omega)]
    omega
  have e2 : (I * BitVec.ofNat 64 16 + BitVec.ofNat 64 c).toNat = 16 * I.toNat + c := by
    rw [BitVec.toNat_add, e1, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := c) (by omega),
      Nat.mod_eq_of_lt (by omega)]
  rw [BitVec.toNat_add, e2, Nat.mod_eq_of_lt (by omega)]
  omega

theorem blk_cell0 {Ar I C : BitVec 64} (hI : I.toNat < C.toNat)
    (hAC : Ar.toNat + 16 * C.toNat < 2 ^ 64) :
    (Ar + I * BitVec.ofNat 64 16).toNat = Ar.toNat + 16 * I.toNat := by
  have := blk_cell (c := 0) (by decide) hI hAC
  simpa using this

/-! ## The loop -/

/-- The loop locals. -/
def LL (P C Ar : BitVec 64) (m : Locals) : Prop :=
  m.lookup (nm "p") = some (.val (.word P)) ∧ m.lookup (nm "count") = some (.val (.word C)) ∧
    m.lookup (nm "arr") = some (.val (.word Ar)) ∧ ∃ I O : BitVec 64,
      m.lookup (nm "i") = some (.val (.word I)) ∧ m.lookup (nm "off") = some (.val (.word O)) ∧
      I.toNat ≤ C.toNat

def LI (a : Act σ) (Γ0 : Gam) (P C Ar : BitVec 64) (t : State σ) : Prop :=
  LL P C Ar t.locals ∧ LH a Γ0 Ar C t

theorem ll_total {P C Ar : BitVec 64} {m : Locals} (old : Option (ValueHOL 64)) (h : LL P C Ar m) :
    LL P C Ar (m.resVarEq (nm "total", old)) := by
  obtain ⟨h1, h2, h3, I, O, h4, h5, h6⟩ := h
  exact ⟨by rw [lookup_resVarEq_ne _ _ (by decide)]; exact h1,
    by rw [lookup_resVarEq_ne _ _ (by decide)]; exact h2,
    by rw [lookup_resVarEq_ne _ _ (by decide)]; exact h3, I, O,
    by rw [lookup_resVarEq_ne _ _ (by decide)]; exact h4,
    by rw [lookup_resVarEq_ne _ _ (by decide)]; exact h5, h6⟩

/-- The loop body post. -/
def LB (a : Act σ) (Γ0 : Gam) (P C Ar : BitVec 64) (r : Option (PanSemResultExact 64))
    (t : State σ) : Prop :=
  (r = none → LI a Γ0 P C Ar t) ∧
    ∀ r', r = some r' → (r' ≠ .break ∧ r' ≠ .continue) ∧ HQ a Γ0 r t

theorem abn_nbc {r : PanSemResultExact 64} (h : Abn r) :
    r ≠ .break ∧ r ≠ .continue := by
  rcases h with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> exact ⟨by simp, by simp⟩

theorem rls_body {a : Act σ} (ha : ActOK a X) {Γ0 : Gam}
    {P C Ar : BitVec 64} {sgi : Sig} (hgr : sgi.grows = true → a.sg.grows = true)
    (hitu : CSumm σ X a.Cb a.H (nm "rlp_item_total_unchecked") sgi [])
    (hpi : sgi.params = [.any]) (hgi : sgi.gw = [])
    (hAC : Ar.toNat + 16 * C.toNat < 2 ^ 64)
    (hfr : ∀ x : BitVec 64, Overlap Ar.toNat (16 * C.toNat) x → ¬ a.p0.Allocated x.toNat) :
    HoareG σ X (fun t => LI a Γ0 P C Ar t ∧ CondTrue t slCond) slLoopBody (LB a Γ0 P C Ar) := by
  intro s hs ⟨⟨⟨hp, hc, harr, I, O, hi, ho, hIC⟩, hlh⟩, hcond⟩
  have hIlt : I.toNat < C.toNat := cond_lt (ev_lw hi) (ev_lw hc) hcond
  refine (?_ : HoareG σ X (fun t => t = s) slLoopBody (LB a Γ0 P C Ar)) s hs rfl
  have hps : ∀ pt ∈ sgi.params, pt = .any := by rw [hpi]; simp
  unfold slLoopBody
  refine hoareG_decCall (summ_funSpec hitu) ?_ ?_
  · intro u _ hu vs hvs callee v st hR _ hsh
    subst u
    rw [evs_cons (ev_add2 (ev_lw hp) (ev_lw ho)) evs_nil] at hvs
    cases hvs
    obtain ⟨Γ, q, he, hh, hblk⟩ := hlh
    obtain ⟨Γ', q', he', hh', hm', hnf', -⟩ := heap_call ha hh hR (by simp [Good])
      (by simp [Abortive]) (argsOK_any hps (by rw [hpi]; rfl))
      (fun x hx => absurd hx (argCells_any hps)) (by rw [hgi]; simp) hgr
    obtain ⟨T, rfl⟩ := val_of_shapeEq_one' hsh
    have hlh' : LH a Γ0 Ar C st := lh_call hh hblk he he' hh' hm' hnf'
    set t1 := setVarHOLFinite (nm "total") (.val (.word T)) { st with locals := s.locals } with ht1
    have hl1 : ∀ y, y ≠ nm "total" → t1.locals.lookup y = s.locals.lookup y :=
      fun y hy => lk_set_ne _ _ (Ne.symm hy)
    have hlh1 : LH a Γ0 Ar C t1 := lh_congr (s := st) ha.hH rfl rfl rfl rfl hlh'
    have hL : ∀ u : State σ, u.locals = t1.locals → ∀ y, y ≠ nm "total" →
        u.locals.lookup y = s.locals.lookup y := fun u hu y hy => by rw [hu]; exact hl1 y hy
    refine hoareG_seq (R := fun r u => r = none ∧ u.locals = t1.locals ∧ LH a Γ0 Ar C u)
      (hoareG_pre (hoareG_st_blk ha hfr ?_ ?_) fun u _ hu => by subst hu; exact ⟨rfl, hlh1⟩)
      (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · intro u hu
      refine ⟨Ar + I * BitVec.ofNat 64 16, ev_add2 (ev_lw (by rw [hL u hu _ (by decide)]; exact harr))
        (ev_mul2 (ev_lw (by rw [hL u hu _ (by decide)]; exact hi)) (ev_cw _ 16)), fun h8 => ?_⟩
      rw [Overlap, blk_cell0 hIlt hAC]
      rw [blk_cell0 hIlt hAC] at h8
      omega
    · intro u hu v hv
      rw [ev_add2 (ev_lw (by rw [hL u hu _ (by decide)]; exact hp))
        (ev_lw (by rw [hL u hu _ (by decide)]; exact ho))] at hv
      cases hv
      exact ⟨_, by rw [flattenHOL]⟩
    refine hoareG_seq (R := fun r u => r = none ∧ u.locals = t1.locals ∧ LH a Γ0 Ar C u)
      (hoareG_pre (hoareG_st_blk ha hfr ?_ ?_) fun u _ hu => ⟨hu.2.1, hu.2.2⟩)
      (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · intro u hu
      refine ⟨Ar + (I * BitVec.ofNat 64 16 + BitVec.ofNat 64 8),
        ev_add3 (ev_lw (by rw [hL u hu _ (by decide)]; exact harr))
          (ev_mul2 (ev_lw (by rw [hL u hu _ (by decide)]; exact hi)) (ev_cw _ 16)) (ev_cw _ 8),
        fun h8 => ?_⟩
      rw [Overlap, blk_cell (by decide) hIlt hAC]
      rw [blk_cell (by decide) hIlt hAC] at h8
      omega
    · intro u hu v hv
      rw [ev_lw (by rw [hu]; exact lk_set_self _ _ _)] at hv
      cases hv
      exact ⟨_, by rw [flattenHOL]⟩
    -- `off = off + total; i = i + 1`
    refine hoareG_seq (R := fun r u => r = none ∧ (∀ y, y ≠ nm "off" → y ≠ nm "total" →
        u.locals.lookup y = s.locals.lookup y) ∧
        u.locals.lookup (nm "off") = some (.val (.word (O + T))) ∧ LH a Γ0 Ar C u) ?_
      (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoareG_assign fun u _ ⟨_, hu, hlhu⟩ v hv _ => ?_
      rw [ev_add2 (ev_lw (by rw [hL u hu _ (by decide)]; exact ho))
        (ev_lw (by rw [hu]; exact lk_set_self _ _ _))] at hv
      cases hv
      refine ⟨rfl, fun y h1 h2 => ?_, lk_set_self _ _ _, lh_congr (s := u) ha.hH rfl rfl rfl rfl hlhu⟩
      rw [lk_set_ne _ _ (Ne.symm h1)]
      exact hL u hu y h2
    · refine hoareG_assign fun u _ ⟨_, hu, hoff, hlhu⟩ v hv _ => ?_
      rw [ev_add2 (ev_lw (by rw [hu _ (by decide) (by decide)]; exact hi)) (ev_cw _ 1)] at hv
      cases hv
      have hI1 : (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := by
        rw [BitVec.toNat_add, BitVec.toNat_ofNat]; omega
      refine ⟨fun _ => ⟨ll_total _ ⟨?_, ?_, ?_, I + BitVec.ofNat 64 1, O + T, lk_set_self _ _ _,
        ?_, by omega⟩, lh_congr (s := u) ha.hH rfl rfl rfl rfl hlhu⟩, fun r' h => by cases h⟩
      · rw [lk_set_ne _ _ (by decide), hu _ (by decide) (by decide)]; exact hp
      · rw [lk_set_ne _ _ (by decide), hu _ (by decide) (by decide)]; exact hc
      · rw [lk_set_ne _ _ (by decide), hu _ (by decide) (by decide)]; exact harr
      · rw [lk_set_ne _ _ (by decide)]; exact hoff
  · intro u _ hu vs hvs callee r st hR _ habn
    subst u
    rw [evs_cons (ev_add2 (ev_lw hp) (ev_lw ho)) evs_nil] at hvs
    cases hvs
    unfold LB
    refine ⟨fun h => absurd h (by simp), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨abn_nbc habn, fun r'' hr'' hna => ?_⟩
    cases hr''
    obtain ⟨Γ, q, he, hh, -⟩ := hlh
    obtain ⟨Γ', q', he', hh', -⟩ := heap_call ha hh hR (abn_good habn) hna
      (argsOK_any hps (by rw [hpi]; rfl)) (fun x hx => absurd hx (argCells_any hps))
      (by rw [hgi]; simp) hgr
    exact ⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'⟩

/-! ## The function -/

/-- A fresh block does not wrap. -/
theorem freshBuf_bound {Γ : Gam} {p p' : Ptrs} (hord : p.Ordered) (hord' : p'.Ordered)
    {w : BitVec 64} {n : Nat} (hf : FreshBuf Γ p p' w n) : n = 0 ∨ w.toNat + n < 2 ^ 64 := by
  by_cases hn : n = 0
  · exact Or.inl hn
  · right
    have hse : scratchEnd < 2 ^ 64 - 8 := by decide
    have hw := w.isLt
    let a0 := min (w.toNat + n - 1) (2 ^ 64 - 1)
    let a := a0 - a0 % 8
    have ha64 : a < 2 ^ 64 := by omega
    have hov : Overlap w.toNat n (BitVec.ofNat 64 a) := by
      unfold Overlap
      rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt ha64]
      omega
    have hfr := (hf.2 _ hov).1
    unfold Fresh at hfr
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt ha64] at hfr
    unfold Ptrs.Ordered at hord hord'
    simp only [heapBase, heapEnd, scratchEnd] at hord hord' hse ⊢
    omega

theorem csumm_rlp_list_to_slices {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hC : CfgOK C)
    (hal : ∀ x, X.memaddrs x → x.toNat % 8 = 0) (hAC : AllocCfg C) (hNS : NullSafe X)
    (hX : X.code.lookup = guestCode) (hD : DomLow X) {sgc sgi : Sig}
    (hcnt : CSumm σ X C H (nm "rlp_list_count") sgc []) (hpc : sgc.params = [.any, .any])
    (hgc : sgc.gw = [])
    (hitu : CSumm σ X C H (nm "rlp_item_total_unchecked") sgi []) (hpi : sgi.params = [.any])
    (hgi : sgi.gw = []) {g : Bool} (hgc2 : sgc.grows = true → g = true)
    (hgi2 : sgi.grows = true → g = true) :
    CSumm σ X C H (nm "rlp_list_to_slices") (sigRLS g) [] := by
  have halloc : CSumm σ X C H (nm "alloc") allocSig [] :=
    csumm_of_summ (builtinTab_sound hX hH hAC _ _ (by simp [builtinTab]))
  have hpsc : ∀ pt ∈ sgc.params, pt = .any := by rw [hpc]; simp
  have hpsa : ∀ pt ∈ allocSig.params, pt = .any := by simp [allocSig]
  refine csumm_of_heap hH hC hal hAC hNS fun vs body callee rs hl s0 _ hloc Γ0 p0 ha hh => ?_
  rw [hX] at hl
  obtain ⟨rfl, -, A0, B0, rfl, hsA, hsB, hA, hB⟩ :=
    lookupCode_two code_rlp_list_to_slices (by decide) hl
  obtain ⟨P, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hsB
  have hpP : s0.locals.lookup (nm "p") = some (.val (.word P)) := by rw [hloc]; exact hA
  have hlN : s0.locals.lookup (nm "len") = some (.val (.word N)) := by rw [hloc]; exact hB
  refine hoareG_conseq (P := fun t => t = s0)
    (Q := HQ (actOf C H (sigRLS g) [] [.val (.word P), .val (.word N)] s0 Γ0 p0) Γ0) ?_
    (fun _ _ h => h) ?_
  rotate_left
  · intro r t _ _ h r' hr hna
    obtain ⟨Γ', p', he, hh'⟩ := h r' hr hna
    exact ⟨Γ', p', he, hh', fun v _ i rt w hrt => by simp [sigRLS] at hrt⟩
  unfold slBody
  -- `count = rlp_list_count(p, len)`
  refine hoareG_decCall ((summ_funSpec hcnt).and (funSpec_count_le hX hD)) ?_ ?_
  rotate_left
  · intro s _ hs vs hvs callee r st ⟨hR, _⟩ _ habn r' hr' hna
    subst s
    cases hr'
    rw [evs_cons (ev_lw hpP) (evs_cons (ev_lw hlN) evs_nil)] at hvs
    cases hvs
    obtain ⟨Γ1, q1, he1, hh1, -⟩ := heap_call ha hh hR (abn_good habn) hna
      (argsOK_any hpsc (by rw [hpc]; rfl)) (fun x hx => absurd hx (argCells_any hpsc))
      (by rw [hgc]; simp) hgc2
    exact ⟨Γ1, q1, he1, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh1⟩
  intro s _ hs vs hvs callee v st ⟨hR, hB⟩ _ _
  subst s
  rw [evs_cons (ev_lw hpP) (evs_cons (ev_lw hlN) evs_nil)] at hvs
  cases hvs
  obtain ⟨Γ1, q1, he1, hh1, hm1, -, -⟩ := heap_call ha hh hR (by simp [Good]) (by simp [Abortive])
    (argsOK_any hpsc (by rw [hpc]; rfl)) (fun x hx => absurd hx (argCells_any hpsc))
    (by rw [hgc]; simp) hgc2
  obtain ⟨Cn, rfl, hCle⟩ := hB _ rfl
  set a := actOf C H (sigRLS g) [] [.val (.word P), .val (.word N)] s0 Γ0 p0 with hadef
  set s1 := setVarHOLFinite (nm "count") (.val (.word Cn)) { st with locals := s0.locals }
    with hs1
  have hh1' : Heap a Γ1 q1 s1 := heap_congr (s := st) ha.hH rfl rfl rfl rfl hh1
  have hcl1 : s1.locals.lookup (nm "count") = some (.val (.word Cn)) := lk_set_self _ _ _
  have hpl1 : s1.locals.lookup (nm "p") = some (.val (.word P)) := by
    rw [lk_set_ne _ _ (by decide)]; exact hpP
  refine hoareG_conseq (P := fun t => t = s1) (Q := HQ a Γ0) ?_ (fun _ _ h => h)
    (fun r t _ _ h => hq_locals ha.hH _ h)
  -- `arr = alloc(count * 16)`
  have h16 : (Cn * BitVec.ofNat 64 16).toNat = 16 * Cn.toNat := by
    rw [BitVec.toNat_mul, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 16) (by decide),
      Nat.mod_eq_of_lt (by omega)]
    omega
  refine hoareG_decCall (summ_funSpec halloc) ?_ ?_
  rotate_left
  · intro s _ hs vs hvs callee r st2 hR _ habn r' hr' hna
    subst s
    cases hr'
    rw [evs_cons (ev_mul2 (ev_lw hcl1) (ev_cw _ 16)) evs_nil] at hvs
    cases hvs
    obtain ⟨Γ2, q2, he2, hh2, -⟩ := heap_call ha hh1' hR (abn_good habn) hna (argsOK_any hpsa rfl)
      (fun x hx => absurd hx (argCells_any hpsa)) (by simp [allocSig]) (by simp [allocSig])
    exact ⟨Γ2, q2, ext_trans he1 he2, heap_congr (s := st2) ha.hH rfl rfl rfl rfl hh2⟩
  intro s _ hs vs hvs callee v st2 hR _ hsh
  subst s
  rw [evs_cons (ev_mul2 (ev_lw hcl1) (ev_cw _ 16)) evs_nil] at hvs
  cases hvs
  obtain ⟨Γ2, q2, he2, hh2, hm2, -, hret⟩ := heap_call ha hh1' hR (by simp [Good])
    (by simp [Abortive]) (argsOK_any hpsa rfl) (fun x hx => absurd hx (argCells_any hpsa))
    (by simp [allocSig]) (by simp [allocSig])
  obtain ⟨Ar, rfl⟩ := val_of_shapeEq_one' hsh
  obtain ⟨x, hx, hfb⟩ := hret _ rfl 0 (.freshArg 0 1 0) Ar rfl (by rw [flattenHOL]; rfl)
  have hxe : x = Cn * BitVec.ofNat 64 16 := by
    simp only [argW, wordOf, List.getElem?_cons_zero, Option.some.injEq] at hx
    exact hx.symm
  subst hxe
  rw [h16] at hfb
  have hfb1 : ∀ y : BitVec 64, Overlap Ar.toNat (16 * Cn.toNat) y →
      Fresh q1 q2 y ∧ ¬ InObj Γ2 y.toNat := fun y hy => hfb.2 y (by simpa using hy)
  have hord1 := heap_ord hh1'
  have hord2 := heap_ord hh2
  have hAC' : Ar.toNat + 16 * Cn.toNat < 2 ^ 64 := by
    rcases freshBuf_bound hord1 hord2 hfb with h | h
    · have := Ar.isLt; omega
    · omega
  have hfr : ∀ y : BitVec 64, Overlap Ar.toNat (16 * Cn.toNat) y → ¬ a.p0.Allocated y.toNat :=
    fun y hy => fresh_not_alloc ha.hord0 hord2 (mono_trans hm1 hm2) (fresh_mono hm1 (hfb1 y hy).1)
  set s2 := setVarHOLFinite (nm "arr") (.val (.word Ar)) { st2 with locals := s1.locals } with hs2
  refine hoareG_conseq (P := fun t => t = s2) (Q := HQ a Γ0) ?_ (fun _ _ h => h)
    (fun r t _ _ h => hq_locals ha.hH _ h)
  refine hoareG_dec fun s _ hs v hv _ => ?_
  subst s
  rw [ev_cw] at hv
  cases hv
  refine hoareG_conseq (Q := HQ a Γ0) ?_ (fun _ _ h => h) (fun r t _ _ h => hq_locals ha.hH _ h)
  refine hoareG_dec fun s _ hs v hv _ => ?_
  subst s
  rw [ev_cw] at hv
  cases hv
  refine hoareG_conseq (Q := HQ a Γ0) ?_ (fun _ _ h => h) (fun r t _ _ h => hq_locals ha.hH _ h)
  -- the loop, then `return <arr, count>`
  refine hoareG_seq (R := fun r t => (r = none → LI a Γ0 P Cn Ar t) ∧ (r ≠ none → HQ a Γ0 r t))
    ?_ (fun r t _ hr _ h => h.2 hr) ?_
  · refine hoareG_pre (P := LI a Γ0 P Cn Ar) ?_ fun t _ ht => ?_
    · refine hoareG_while (fun t h => ⟨h.1, lh_congr (s := t) ha.hH rfl rfl rfl rfl h.2⟩) ?_ ?_
      · refine hoareG_conseq (rls_body ha hgi2 hitu hpi hgi hAC' hfr) (fun _ _ h => h) ?_
        intro r t _ _ ⟨h1, h2⟩
        refine ⟨h1, fun hc => ?_, fun hb => ?_, fun r' hr' _ _ => ⟨fun h => ?_, fun _ => (h2 r' hr').2⟩⟩
        · exact absurd rfl (h2 _ hc).1.2
        · exact absurd rfl (h2 _ hb).1.1
        · rw [hr'] at h; cases h
      · intro t _ h _
        exact ⟨fun _ => h, fun h' => absurd rfl h'⟩
    · subst ht
      refine ⟨⟨?_, ?_, ?_, BitVec.ofNat 64 0, BitVec.ofNat 64 0, ?_, lk_set_self _ _ _, by simp⟩,
        Γ2, q2, ext_trans he1 he2, heap_congr (s := st2) ha.hH rfl rfl rfl rfl hh2, fun y hy =>
          ⟨(hfb1 y hy).2, fresh_alloc hord1 (hfb1 y hy).1⟩⟩
      · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]
        exact hpl1
      · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]
        exact hcl1
      · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]
        exact lk_set_self _ _ _
      · rw [lk_set_ne _ _ (by decide)]
        exact lk_set_self _ _ _
  · refine hoareG_return fun t _ ⟨h1, _⟩ v _ => ?_
    exact hq_of_lh (t := emptyLocalsHOLFinite t) (lh_congr (s := t) ha.hH rfl rfl rfl rfl (h1 rfl).2) _

end InitECandidate.Solver.MemSafe.WaveHelpers
