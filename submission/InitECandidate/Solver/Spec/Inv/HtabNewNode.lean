import InitECandidate.Solver.Spec.Inv.HtabKeep
import InitECandidate.Solver.Spec.Inv.HtabSetSpec

/-!
# `htab_new_node`: pop the free list, or take `next` (growing first if full)

`funSpec_new_node`: from a separated table with a valid allocation state (`NNPre`: bounds,
`1 ≤ next ≤ cap + 1`, the free list `fl` linked from `HT_FREE` with entries in `[1, next)`, the
heap pointer `H0` above the table's region), a returning `htab_new_node(T)` returns a node `n`
with `1 ≤ n ≤ cap'` (`NNPost`): either `fl = n :: xs` and the free head moved to `PAR n`, or
`fl = []` and `n = next`, `next' = next + 1`. Everything the invariant reads stays (`Keep` up to the
old capacity); growth may have moved the table into `[H0, H1)`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-! ## The code -/

def nnPop : ProgHOL 64 :=
  .dec (nm "nodes") .one (tLoad 40)
    (.dec (nm "nf") .one (.load .one (nA "f" 0))
      (.seq (.store (tAddr 72) (lv (nm "nf"))) (.return (lv (nm "f")))))

def nnNext : ProgHOL 64 :=
  .dec (nm "next") .one (tLoad 64)
    (.seq (.ite (.cmp .lower (tLoad 80) (lv (nm "next"))) (callD (nm "htab_grow") [lv (nm "t")]) .skip)
      (.dec (nm "n") .one (tLoad 64)
        (.seq (.store (tAddr 64) (.op .add [lv (nm "n"), cw 1])) (.return (lv (nm "n"))))))

def nnBody : ProgHOL 64 :=
  .dec (nm "f") .one (tLoad 72) (.seq (.ite (.cmp .notEqual (lv (nm "f")) (cw 0)) nnPop .skip) nnNext)

def nnParams : List (MlS × ShapeHOL) := [(nm "t", .one)]

theorem entry_new_node : fnEntry Guest.Software.guestFn_htab_new_node =
    (nm "htab_new_node", nnParams, nnBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_new_node : guestCode (nm "htab_new_node") = some (nnParams, nnBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 134) (by decide)) ⟨_, rfl⟩
    entry_new_node

/-! ## Pre and post -/

/-- The allocation precondition. -/
structure NNPre (m : Mem) (T : BitVec 64) (fl : List (BitVec 64)) (H0 : BitVec 64) : Prop where
  sep : Sep m T
  s20 : (hdr m T 8).toNat ≤ 2 ^ 20
  c1 : 1 ≤ CAP m T
  c32 : CAP m T ≤ 2 ^ 32
  nx1 : 1 ≤ NX m T
  nxc : NX m T ≤ CAP m T + 1
  chain : FreeChain m T (hdr m T 72) fl
  flr : ∀ x ∈ fl, 1 ≤ x.toNat ∧ x.toNat < NX m T
  h0 : H0.toNat ≤ heapEnd
  h8 : H0.toNat % 8 = 0
  disj : ∀ a, TableRegion m T a → ¬ (H0.toNat ≤ a.toNat ∧ a.toNat < heapEnd)

/-- What a returned node `n` and the final memory satisfy. -/
structure NNPost (m m' : Mem) (d : BitVec 64 → Prop) (be : Bool) (T : BitVec 64)
    (fl : List (BitVec 64)) (H0 H1 n : BitVec 64) : Prop where
  hle : H0.toNat ≤ H1.toNat
  hend : H1.toNat ≤ heapEnd
  h8 : H1.toNat % 8 = 0
  sep : Sep m' T
  cap : CAP m T ≤ CAP m' T
  c32 : CAP m' T ≤ 2 ^ 32
  keep : Keep m m' d be T (CAP m T)
  n1 : 1 ≤ n.toNat
  nc : n.toNat ≤ CAP m' T
  nxc : NX m' T ≤ CAP m' T + 1
  alloc : (∃ xs, fl = n :: xs ∧ hdr m' T 72 = PAR m T n ∧ NX m' T = NX m T) ∨
    (fl = [] ∧ n.toNat = NX m T ∧ NX m' T = NX m T + 1 ∧ hdr m' T 72 = 0)
  modif : ModifiesOnly (RegionOrFresh m T H0 H1) m m'
  region : ∀ a, TableRegion m' T a → RegionOrFresh m T H0 H1 a

/-! ## The three outcomes, pure part -/

theorem hdr_store {m : Mem} {T : BitVec 64} (hl : Lay m T) {k j : Nat} (hk : k < 88) (hj : j < 88)
    (hjk : j ≠ k) (x : BitVec 64) : hdr (upd m (T + BitVec.ofNat 64 k) x) T j = hdr m T j := by
  unfold hdr; rw [rd_upd_ne (hdrNe hl hj hk hjk)]

section outcomes
variable {m : Mem} {d : BitVec 64 → Prop} {be : Bool} {T H0 : BitVec 64} {fl : List (BitVec 64)}
variable (hP : NNPre m T fl H0)
include hP

theorem nn_store_basic {k : Nat} (hk : k < 88) (h0 : k ≠ 0) (h8 : k ≠ 8) (h24 : k ≠ 24) (h32 : k ≠ 32)
    (h40 : k ≠ 40) (h48 : k ≠ 48) (h56 : k ≠ 56) (h80 : k ≠ 80) (x : BitVec 64) :
    Sep (upd m (T + BitVec.ofNat 64 k) x) T ∧ CAP (upd m (T + BitVec.ofNat 64 k) x) T = CAP m T ∧
      Keep m (upd m (T + BitVec.ofNat 64 k) x) d be T (CAP m T) ∧
      ModifiesOnly (RegionOrFresh m T H0 H0) m (upd m (T + BitVec.ofNat 64 k) x) ∧
      (∀ a, TableRegion (upd m (T + BitVec.ofNat 64 k) x) T a → RegionOrFresh m T H0 H0 a) := by
  have hl := lay_of_sep hP.sep
  have H := fun j (hj : j < 88) (hjk : j ≠ k) => hdr_store hl hk hj hjk x
  obtain ⟨hkeep, hcap⟩ := keep_hdr_store (d := d) (be := be) hl hk h0 h8 h24 h32 h40 h48 h56 h80 x
  have hreg : TableRegion (upd m (T + BitVec.ofNat 64 k) x) T = TableRegion m T :=
    tableRegion_congr (H 8 (by decide) (Ne.symm h8)) (H 32 (by decide) (Ne.symm h32))
      (H 40 (by decide) (Ne.symm h40)) (H 48 (by decide) (Ne.symm h48)) (H 80 (by decide) (Ne.symm h80))
  refine ⟨sep_congr (H 0 (by decide) (Ne.symm h0)) (H 8 (by decide) (Ne.symm h8))
    (H 32 (by decide) (Ne.symm h32)) (H 40 (by decide) (Ne.symm h40)) (H 48 (by decide) (Ne.symm h48))
    (H 80 (by decide) (Ne.symm h80)) hP.sep, hcap, hkeep, fun a ha => ?_, fun a ha => Or.inl (hreg ▸ ha)⟩
  have : a ≠ T + BitVec.ofNat 64 k := fun e => ha (Or.inl (e ▸ Or.inl (inR_hdr hl.ht hk)))
  exact upd_ne this

/-- Popping the free list. -/
theorem nn_pop (hF : hdr m T 72 ≠ 0) :
    NNPost m (upd m (T + BitVec.ofNat 64 72) (PAR m T (hdr m T 72))) d be T fl H0 H0 (hdr m T 72) := by
  have hl := lay_of_sep hP.sep
  obtain ⟨hsep, hcap, hkeep, hmod, hreg⟩ := nn_store_basic (d := d) (be := be) hP (k := 72)
    (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)
    (by decide) (PAR m T (hdr m T 72))
  obtain ⟨xs, rfl⟩ : ∃ xs, fl = hdr m T 72 :: xs := by
    have hc := hP.chain
    cases fl with
    | nil => exact absurd hc hF
    | cons x xs => exact ⟨xs, by rw [hc.1]⟩
  have hr := hP.flr _ (List.mem_cons_self ..)
  have hnx := hP.nxc
  have e64 : NX (upd m (T + BitVec.ofNat 64 72) (PAR m T (hdr m T 72))) T = NX m T := by
    unfold NX; rw [hdr_store hl (by decide) (by decide) (by decide)]
  refine ⟨le_refl _, hP.h0, hP.h8, hsep, by rw [hcap], by rw [hcap]; exact hP.c32, hkeep, hr.1,
    by rw [hcap]; omega, by rw [e64, hcap]; exact hnx, Or.inl ⟨xs, rfl, ?_, e64⟩, hmod, hreg⟩
  unfold hdr; rw [rd_upd_self]

theorem fl_nil (h72 : hdr m T 72 = 0) : fl = [] := by
  have hc := hP.chain
  cases fl with
  | nil => rfl
  | cons x xs =>
      exfalso
      have := (hP.flr x (List.mem_cons_self ..)).1
      rw [← hc.1, h72] at this
      simp at this

/-- Taking `next` without growth. -/
theorem nn_next (h72 : hdr m T 72 = 0) (hnc : NX m T ≤ CAP m T) :
    NNPost m (upd m (T + BitVec.ofNat 64 64) (hdr m T 64 + BitVec.ofNat 64 1)) d be T fl H0 H0
      (hdr m T 64) := by
  have hl := lay_of_sep hP.sep
  obtain ⟨hsep, hcap, hkeep, hmod, hreg⟩ := nn_store_basic (d := d) (be := be) hP (k := 64)
    (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)
    (by decide) (hdr m T 64 + BitVec.ofNat 64 1)
  have hc32 := hP.c32
  have hX : (hdr m T 64).toNat + (BitVec.ofNat 64 1).toNat < 2 ^ 64 := by
    have h1 := hnc; unfold NX at h1; have h2 := hc32; unfold CAP at h1 h2; simp; omega
  have e64 : NX (upd m (T + BitVec.ofNat 64 64) (hdr m T 64 + BitVec.ofNat 64 1)) T = NX m T + 1 := by
    have : hdr (upd m (T + BitVec.ofNat 64 64) (hdr m T 64 + BitVec.ofNat 64 1)) T 64 =
        hdr m T 64 + BitVec.ofNat 64 1 := by unfold hdr; rw [rd_upd_self]
    unfold NX; rw [this, toNat_add_lt hX]; simp
  have h72' : hdr (upd m (T + BitVec.ofNat 64 64) (hdr m T 64 + BitVec.ofNat 64 1)) T 72 = 0 := by
    rw [hdr_store hl (by decide) (by decide) (by decide)]; exact h72
  have hnx1 := hP.nx1
  refine ⟨le_refl _, hP.h0, hP.h8, hsep, by rw [hcap], by rw [hcap]; exact hc32, hkeep, hnx1,
    by rw [hcap]; exact hnc, by rw [e64, hcap]; omega,
    Or.inr ⟨fl_nil hP h72, rfl, e64, h72'⟩, hmod, hreg⟩

/-- Taking `next` after growth. -/
theorem nn_grow (h72 : hdr m T 72 = 0) (hnc : CAP m T < NX m T) {mg : Mem} {H1 : BitVec 64}
    (hg : GrowPost m mg d be T H0 H1) :
    NNPost m (upd mg (T + BitVec.ofNat 64 64) (hdr mg T 64 + BitVec.ofNat 64 1)) d be T fl H0 H1
      (hdr m T 64) := by
  have hhe : heapEnd = 2952790016 := rfl
  have hl := lay_of_sep hP.sep
  have hcb := hg.capb
  have hcg := hg.cap
  have hc1 := hP.c1
  have hnxc := hP.nxc
  have hnx64 : NX mg T = NX m T := by unfold NX; rw [hg.h64]
  have hgP : NNPre mg T [] H1 := by
    refine ⟨hg.sep, by rw [hg.h8]; exact hP.s20, by omega, by omega, by rw [hnx64]; exact hP.nx1,
      by rw [hnx64]; omega, by show hdr mg T 72 = 0; rw [hg.h72]; exact h72,
      fun _ h => (by cases h), hg.hend, hg.h8', fun a ha hb => ?_⟩
    rcases hg.region a ha with h1 | h1
    · exact hP.disj a (Or.inl h1) ⟨by have := hg.hle; omega, hb.2⟩
    · unfold InR at h1; omega
  obtain ⟨hsep, hcap, hkeep, hmod, hreg⟩ := nn_store_basic (d := d) (be := be) hgP (k := 64)
    (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)
    (by decide) (hdr mg T 64 + BitVec.ofNat 64 1)
  have hlg := lay_of_sep hg.sep
  have hX : (hdr mg T 64).toNat + (BitVec.ofNat 64 1).toNat < 2 ^ 64 := by
    have h1 := hnxc; unfold NX at h1; rw [hg.h64]; simp; omega
  have e64 : NX (upd mg (T + BitVec.ofNat 64 64) (hdr mg T 64 + BitVec.ofNat 64 1)) T = NX m T + 1 := by
    have : hdr (upd mg (T + BitVec.ofNat 64 64) (hdr mg T 64 + BitVec.ofNat 64 1)) T 64 =
        hdr mg T 64 + BitVec.ofNat 64 1 := by unfold hdr; rw [rd_upd_self]
    unfold NX; rw [this, toNat_add_lt hX, hg.h64]; simp
  have h72' : hdr (upd mg (T + BitVec.ofNat 64 64) (hdr mg T 64 + BitVec.ofNat 64 1)) T 72 = 0 := by
    rw [hdr_store hlg (by decide) (by decide) (by decide), hg.h72]; exact h72
  have hfresh : ∀ a, TableRegion mg T a → RegionOrFresh m T H0 H1 a := fun a ha => by
    rcases hg.region a ha with h1 | h1
    · exact Or.inl (Or.inl h1)
    · exact Or.inr h1
  refine ⟨hg.hle, hg.hend, hg.h8', hsep, by rw [hcap]; omega, by rw [hcap]; omega,
    (keep_of_grow hg).trans hkeep (by omega), hP.nx1, by rw [hcap]; unfold NX at hnc hnxc; omega,
    by rw [e64, hcap]; omega, Or.inr ⟨fl_nil hP h72, rfl, e64, h72'⟩, fun a ha => ?_, fun a ha => ?_⟩
  · have hnot : ¬ RegionOrFresh mg T H1 H1 a := by
      intro h
      rcases h with h | h
      · exact ha (hfresh a h)
      · unfold InR at h; omega
    rw [hmod a hnot]
    exact hg.modif a (fun h => ha (Or.inl h)) (fun h => ha (Or.inr h))
  · rcases hreg a ha with h | h
    · exact hfresh a h
    · unfold InR at h; omega

end outcomes

/-! ## The Hoare proof -/

section hoare
variable {σ : Type} {X : Ctx 64}

/-- The post of a returning `htab_new_node`. -/
def NNRet (s0 u : PanSemStateFiniteExact 64 σ) (T : BitVec 64) (fl : List (BitVec 64)) (H0 : BitVec 64)
    (v : ValueHOL 64) : Prop :=
  ∃ n H1 : BitVec 64, v = .val (.word n) ∧ u.globals.lookup hpN = some (.val (.word H1)) ∧
    NNPost s0.memory u.memory s0.memaddrs s0.be T fl H0 H1 n ∧
    (∀ g, g ≠ hpN → u.globals.lookup g = s0.globals.lookup g) ∧ u.memaddrs = s0.memaddrs ∧
    u.be = s0.be

/-- `var n = t[64]; st t + 64, n + 1; return n` -/
theorem nnTail_hoare (t0 : PanSemStateFiniteExact 64 σ) {T : BitVec 64} (hT : DLk t0 "t" T) :
    Hoare σ X (fun x => x = t0) (.dec (nm "n") .one (tLoad 64)
        (.seq (.store (tAddr 64) (.op .add [lv (nm "n"), cw 1])) (.return (lv (nm "n")))))
      (fun r u => ∀ v, r = some (.returned v) → v = .val (.word (hdr t0.memory T 64)) ∧
        u.memory = upd t0.memory (T + BitVec.ofNat 64 64) (hdr t0.memory T 64 + BitVec.ofNat 64 1) ∧
        u.globals = t0.globals ∧ u.memaddrs = t0.memaddrs ∧ u.be = t0.be) := by
  refine hoare_dec fun u _ hu v hv _ => ?_
  have hu' : u = t0 := hu
  subst hu'
  have e := ev_tLoad_w hT hv
  subst e
  have hn : DLk (setVarHOLFinite (nm "n") (.val (.word (rd u.memory (T + BitVec.ofNat 64 64)))) u) "n"
      (hdr u.memory T 64) := by unfold DLk; rw [lk_set_self]; rfl
  refine hoare_seq (R := fun r t => r = none ∧ t.memory = upd u.memory (T + BitVec.ofNat 64 64)
      (hdr u.memory T 64 + BitVec.ofNat 64 1) ∧ t.globals = u.globals ∧ t.memaddrs = u.memaddrs ∧
      t.be = u.be ∧ DLk t "n" (hdr u.memory T 64)) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_store_w (fun _ => T + BitVec.ofNat 64 64) (fun _ => hdr u.memory T 64 + BitVec.ofNat 64 1)
      ?_ ?_ ?_
    · rintro t _ rfl w hw
      rw [ev_tAddr (by lks)] at hw; exact (word_inj hw).symm
    · rintro t _ rfl w hw
      rw [ev_add2 (ev_lv_w hn) (ev_cw _ 1)] at hw; exact (Option.some.inj hw).symm
    · rintro t _ rfl
      exact ⟨rfl, rfl, rfl, rfl, rfl, hn⟩
  · refine hoare_return fun t _ ⟨_, hm, hg, hd, hb, hn'⟩ w hw => fun v' hv' => ?_
    rw [ev_lv_w hn'] at hw
    simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hv'
    subst hv'
    exact ⟨(Option.some.inj hw).symm, hm, hg, hd, hb⟩

/-- After the growth test of `htab_new_node`. -/
def NNR (s0 : PanSemStateFiniteExact 64 σ) (T H0 : BitVec 64) (r : Option (PanSemResultExact 64))
    (t : PanSemStateFiniteExact 64 σ) : Prop :=
  r = none ∧ DLk t "t" T ∧
    ((CAP s0.memory T < NX s0.memory T ∧ ∃ H1, t.globals.lookup hpN = some (.val (.word H1)) ∧
      GrowPost s0.memory t.memory s0.memaddrs s0.be T H0 H1 ∧
      (∀ g, g ≠ hpN → t.globals.lookup g = s0.globals.lookup g) ∧ t.memaddrs = s0.memaddrs ∧
      t.be = s0.be) ∨
    (NX s0.memory T ≤ CAP s0.memory T ∧ t.memory = s0.memory ∧ t.globals = s0.globals ∧
      t.memaddrs = s0.memaddrs ∧ t.be = s0.be))

theorem nnNext_hoare (hC : X.code.lookup = guestCode) (s0 u1 : PanSemStateFiniteExact 64 σ)
    {T H0 : BitVec 64} {fl : List (BitVec 64)} (hT : DLk u1 "t" T) (hm1 : u1.memory = s0.memory)
    (hg1 : u1.globals = s0.globals) (hd1 : u1.memaddrs = s0.memaddrs) (hb1 : u1.be = s0.be)
    (hP : NNPre s0.memory T fl H0) (h72 : hdr s0.memory T 72 = 0)
    (hhp : s0.globals.lookup hpN = some (.val (.word H0))) :
    Hoare σ X (fun t => t = u1) nnNext (fun r u => ∀ v, r = some (.returned v) → NNRet s0 u T fl H0 v) := by
  have hl := lay_of_sep hP.sep
  refine hoare_dec fun u _ hu v hv _ => ?_
  have hu' : u = u1 := hu
  subst hu'
  have e := ev_tLoad_w hT hv
  subst e
  generalize hXd : rd u.memory (T + BitVec.ofNat 64 64) = X at *
  have hX : hdr s0.memory T 64 = X := by rw [← hm1]; exact hXd
  have hT2 : DLk (setVarHOLFinite (nm "next") (.val (.word X)) u) "t" T := by lks
  have hx2 : DLk (setVarHOLFinite (nm "next") (.val (.word X)) u) "next" X := by
    unfold DLk; rw [lk_set_self]
  refine hoare_seq (R := NNR s0 T H0) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_ite ?_ ?_
    · intro t ht ⟨ht0, w, hw, hw0⟩ htr
      subst ht0
      have hlt : CAP s0.memory T < NX s0.memory T := by
        obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
        have ex := ev_tLoad_w hT2 hx
        rw [ev_lv_w hx2] at hy
        cases hy
        simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at ex
        subst ex
        have := lower_true hxy
        unfold CAP NX; rw [hX, ← hm1]; exact this
      refine (hoare_callD (P := fun t => t = setVarHOLFinite (nm "next") (.val (.word X)) u)
        (Q := NNR s0 T H0) (funSpec_grow_post hC)
        (fun t' ht' ht0 vs hvs callee v st hR hst => ?_)) _ ht rfl htr
      subst ht0
      obtain ⟨a, r1, rfl, ha, hr1⟩ := evs_cons_inv hvs
      have hr : r1 = [] := by
        have h0 : evs (setVarHOLFinite (nm "next") (.val (.word X)) u) ([] : List (ExpHOL 64)) =
          some [] := evs_nil
        rw [h0] at hr1; exact (Option.some.inj hr1).symm
      subst hr
      rw [ev_lv_w hT2] at ha
      cases ha
      have hm2 : (callEntryStateHOLFinite (setVarHOLFinite (nm "next") (.val (.word X)) u) callee).memory =
        s0.memory := hm1
      obtain ⟨H1, hp1, hgp, hgo, hgd, hgb⟩ := hR T H0 rfl (by rw [hm2]; exact hP.sep)
        (by rw [hm2]; exact hP.s20) (by rw [hm2]; exact hP.c32) (by show u.globals.lookup hpN = _; rw [hg1]; exact hhp)
        hP.h0 hP.h8 (by rw [hm2]; exact hP.disj) v rfl
      have hd2 : (callEntryStateHOLFinite (setVarHOLFinite (nm "next") (.val (.word X)) u) callee).memaddrs =
        s0.memaddrs := hd1
      have hb2 : (callEntryStateHOLFinite (setVarHOLFinite (nm "next") (.val (.word X)) u) callee).be =
        s0.be := hb1
      rw [hm2, hd2, hb2] at hgp
      refine ⟨rfl, hT2, Or.inl ⟨hlt, H1, hp1, hgp, ?_, ?_, ?_⟩⟩
      · intro g hgn; show st.globals.lookup g = _
        rw [hgo g hgn]; show u.globals.lookup g = _; rw [hg1]
      · show st.memaddrs = _; rw [hgd]; exact hd1
      · show st.be = _; rw [hgb]; exact hb1
    · refine hoare_skip fun t _ ⟨ht0, hw⟩ => ?_
      subst ht0
      refine ⟨rfl, hT2, Or.inr ⟨?_, hm1, hg1, hd1, hb1⟩⟩
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hw
      have ex := ev_tLoad_w hT2 hx
      rw [ev_lv_w hx2] at hy
      cases hy
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at ex
      subst ex
      have := lower_false hxy
      unfold CAP NX; rw [hX, ← hm1]; exact this
  · intro t ht ⟨_, hTt, hcase⟩ htr
    have H := nnTail_hoare t hTt t ht rfl htr
    intro v hv
    obtain ⟨hv', hm, hg, hd, hb⟩ := H v hv
    rcases hcase with ⟨hlt, H1, hp1, hgp, hgo, hgd, hgb⟩ | ⟨hge, hmt, hgt, hdt, hbt⟩
    · refine ⟨hdr s0.memory T 64, H1, by rw [hv', hgp.h64], by rw [hg]; exact hp1, ?_,
        fun g hgn => by rw [hg]; exact hgo g hgn, by rw [hd]; exact hgd, by rw [hb]; exact hgb⟩
      show NNPost s0.memory _ _ _ _ _ _ _ _
      rw [hm]
      exact nn_grow hP h72 hlt hgp
    · refine ⟨hdr s0.memory T 64, H0, by rw [hv', hmt], by rw [hg, hgt]; exact hhp, ?_,
        fun g _ => by rw [hg, hgt], by rw [hd]; exact hdt, by rw [hb]; exact hbt⟩
      show NNPost s0.memory _ _ _ _ _ _ _ _
      rw [hm, hmt]
      exact nn_next hP h72 hge

theorem nnBody_hoare (hC : X.code.lookup = guestCode) (s0 : PanSemStateFiniteExact 64 σ)
    {T H0 : BitVec 64} {fl : List (BitVec 64)} (hT : DLk s0 "t" T) (hP : NNPre s0.memory T fl H0)
    (hhp : s0.globals.lookup hpN = some (.val (.word H0))) :
    Hoare σ X (fun t => t = s0) nnBody
      (fun r u => ∀ v, r = some (.returned v) → NNRet s0 u T fl H0 v) := by
  have hl := lay_of_sep hP.sep
  refine hoare_dec fun u _ hu v hv _ => ?_
  have hu' : u = s0 := hu
  subst hu'
  have e := ev_tLoad_w hT hv
  subst e
  generalize hFd : rd u.memory (T + BitVec.ofNat 64 72) = F at *
  have hF72 : hdr u.memory T 72 = F := hFd
  have hT1 : DLk (setVarHOLFinite (nm "f") (.val (.word F)) u) "t" T := by lks
  have hf1 : DLk (setVarHOLFinite (nm "f") (.val (.word F)) u) "f"
      F := by unfold DLk; rw [lk_set_self]
  refine hoare_seq (R := fun r t => (r = none ∧ t = setVarHOLFinite (nm "f")
      (.val (.word F)) u ∧ F = 0) ∨
      (r ≠ none ∧ ∀ v, r = some (.returned v) → NNRet u t T fl H0 v)) ?_ ?_ ?_
  · refine hoare_ite ?_ (hoare_skip fun t _ ⟨ht, hw⟩ => Or.inl ⟨rfl, ht, ?_⟩)
    · -- pop
      intro t ht ⟨ht0, w, hw, hw0⟩ htr
      subst ht0
      have hF : F ≠ 0 := by
        obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
        rw [ev_lv_w hf1] at hx; rw [ev_cw] at hy
        cases hx; cases hy
        simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using hxy
      refine (hoare_dec (P := fun t => t = setVarHOLFinite (nm "f") (.val (.word F)) u)
        (Q := fun r t => (r = none ∧ t = setVarHOLFinite (nm "f") (.val (.word F)) u ∧ F = 0) ∨
          (r ≠ none ∧ ∀ v, r = some (.returned v) → NNRet u t T fl H0 v))
        (fun t1 _ ht1 v1 hv1 _ => ?_)) _ ht rfl htr
      subst ht1
      have e1 := ev_tLoad_w hT1 hv1
      subst e1
      refine hoare_dec fun t2 _ ht2 v2 hv2 _ => ?_
      subst ht2
      have hN2 : DLk (setVarHOLFinite (nm "nodes") (.val (.word (rd u.memory (T + BitVec.ofNat 64 40))))
          (setVarHOLFinite (nm "f") (.val (.word F)) u)) "nodes" (hdr u.memory T 40) := by
        unfold DLk; rw [lk_set_self]; rfl
      have e2 := ev_nA_load hN2 (by lks) hv2
      subst e2
      refine hoare_seq (R := fun r t3 => r = none ∧ t3.memory = upd u.memory (T + BitVec.ofNat 64 72)
          (PAR u.memory T F) ∧ t3.globals = u.globals ∧ t3.memaddrs = u.memaddrs ∧
          t3.be = u.be ∧ DLk t3 "f" F) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
      · refine hoare_store_w (fun _ => T + BitVec.ofNat 64 72) (fun _ => PAR u.memory T F)
          ?_ ?_ ?_
        · rintro t3 _ rfl w hw
          rw [ev_tAddr (by lks)] at hw; exact (word_inj hw).symm
        · rintro t3 _ rfl w hw
          rw [ev_lv_w (by unfold DLk; rw [lk_set_self])] at hw
          exact (Option.some.inj hw).symm
        · rintro t3 _ rfl
          exact ⟨rfl, rfl, rfl, rfl, rfl, by lks⟩
      · refine hoare_return fun t3 _ ⟨_, hm, hg, hd, hb, hf⟩ w hw => Or.inr ⟨(by simp), fun v' hv' => ?_⟩
        rw [ev_lv_w hf] at hw
        simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hv'
        subst hv'
        refine ⟨_, H0, (Option.some.inj hw).symm, by show t3.globals.lookup hpN = _; rw [hg]; exact hhp,
          ?_, fun g _ => (by show t3.globals.lookup g = _; rw [hg]), hd, hb⟩
        show NNPost u.memory t3.memory _ _ _ _ _ _ _
        rw [hm, ← hF72]
        exact nn_pop hP (hF72 ▸ hF)
    · obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hw
      rw [ht, ev_lv_w hf1] at hx; rw [ev_cw] at hy
      cases hx; cases hy
      simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using hxy
  · intro r t _ hr _ h
    rcases h with h | h
    · exact absurd h.1 hr
    · exact h.2
  · rintro t ht (⟨-, rfl, hF0⟩ | ⟨h, -⟩) htr
    · exact nnNext_hoare hC u _ hT1 rfl rfl rfl rfl hP (by rw [hF72]; exact hF0) hhp _ ht rfl htr
    · exact absurd rfl h

end hoare

section spec
variable {σ : Type} {X : Ctx 64}

/-- **`htab_new_node`.** -/
theorem funSpec_new_node (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "htab_new_node") (fun vs s r u => ∀ (T H0 : BitVec 64) (fl : List (BitVec 64)),
      vs = [.val (.word T)] → NNPre s.memory T fl H0 → s.globals.lookup hpN = some (.val (.word H0)) →
      ∀ v, r = .returned v → NNRet s u T fl H0 v) := by
  intro vs body callee rs hl s hs hloc r hr T H0 fl hvs hP hhp v hv
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hA, hla⟩ := lookupCode_one code_new_node hl
  simp only [List.cons.injEq, and_true] at hvs
  subst hvs
  have hT : DLk s "t" T := by unfold DLk; rw [hloc]; exact hla
  have H := nnBody_hoare (X := X) hC s hT hP hhp s hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H
  exact H _ rfl

end spec

end InitECandidate.Solver.Spec.Inv
