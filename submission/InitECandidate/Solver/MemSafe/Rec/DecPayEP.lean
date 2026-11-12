import InitECandidate.Solver.MemSafe.Rec.DecPayCode
import InitECandidate.Solver.MemSafe.Rec.SplitLoc
import InitECandidate.Solver.MemSafe.Hooks.Rec
import InitECandidate.Solver.MemSafe.Rec.DI

set_option autoImplicit false

/-!
# `decode_payload`: the client predicates and their stability

* `ES Pn Nn arr cnt`: the located buffer `[Pn, Pn + Nn)`, the slice array `arr` (`cnt` slices) is a `tSLA`
  object of `Γ` (or `cnt = 0`), every slice is inside the buffer (`SIn`), and the buffer ends below the array.
* `RK n Ar ks`: the known words of the block `[Ar, Ar + n)`: slot `kv.1` holds `kv.2`.
  `EKw E n Ar ks` conjoins them to a client predicate.
* `ObjN Γ Pn Nn`: the buffer lies in a `tVAL` object of `Γ`.
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Dec (SIn)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Types (tPL tSLA)
open InitECandidate.Solver.MemSafe.MptH

/-- A client predicate that ignores the globals. -/
abbrev Ew (F : Gam → Ptrs → Mem → Prop) : Gam → Ptrs → Mem → LocalsH → Prop := fun Γ q m _ => F Γ q m

/-- The array object. -/
def SlaObj (Γ : Gam) (arr cnt : BitVec 64) : Prop :=
  cnt.toNat = 0 ∨ ∃ o ∈ Γ, o.base = arr ∧ o.ty = tSLA ∧ 16 * cnt.toNat ≤ o.size ∧
    arr.toNat + 16 * cnt.toNat ≤ heapEnd

def ES (Pn Nn : Nat) (arr cnt : BitVec 64) (Γ : Gam) (_q : Ptrs) (m : Mem) : Prop :=
  heapBase ≤ Pn ∧ Pn + Nn ≤ heapEnd ∧ SlaObj Γ arr cnt ∧ SIn m arr cnt.toNat Pn (Pn + Nn) ∧
    (0 < cnt.toNat → Pn + Nn ≤ arr.toNat)

/-- The known words of a block. -/
def RK (n : Nat) (Ar : BitVec 64) (ks : List (Nat × BitVec 64)) (m : Mem) : Prop :=
  ∀ kv ∈ ks, 8 * kv.1 + 8 ≤ n ∧ rd m (Ar + BitVec.ofNat 64 (8 * kv.1)) = kv.2

/-- A client predicate with known words. -/
def EKw (E : Gam → Ptrs → Mem → LocalsH → Prop) (n : Nat) (Ar : BitVec 64)
    (ks : List (Nat × BitVec 64)) : Gam → Ptrs → Mem → LocalsH → Prop :=
  fun Γ q m g => E Γ q m g ∧ RK n Ar ks m

/-- A byte range inside a `tVAL` object. -/
def ObjN (Γ : Gam) (Pn Nn : Nat) : Prop :=
  ∃ x ∈ Γ, x.ty = Types.tVAL ∧ x.lo ≤ Pn ∧ Pn + Nn ≤ x.hi

theorem objN_ext {Γ Γ' : Gam} (he : Ext Γ Γ') {Pn Nn : Nat} (h : ObjN Γ Pn Nn) : ObjN Γ' Pn Nn := by
  obtain ⟨x, hx, ht, h1, h2⟩ := h
  obtain ⟨x', hx', hb, ht', hs⟩ := he x hx
  have e1 : x'.lo = x.lo := by unfold Obj.lo; rw [hb]
  have e2 : x.hi = x.lo + x.size := rfl
  have e3 : x'.hi = x'.lo + x'.size := rfl
  exact ⟨x', hx', ht'.trans ht, by omega, by omega⟩

/-- The range lies below the heap pointer. -/
theorem objN_below {Γ : Gam} {q : Ptrs} (hL : Layout Types.guestC q Γ) {Pn Nn : Nat}
    (h : ObjN Γ Pn Nn) : Pn + Nn ≤ q.hp := by
  obtain ⟨x, hx, ht, h1, h2⟩ := h
  have hlv := (hL.1 x hx).2.2.2.2
  rw [ht, Hooks.val_heap] at hlv
  simp only [Region.Live] at hlv
  have e : x.hi = x.lo + x.size := rfl
  omega

/-- A sub-range. -/
theorem objN_sub {Γ : Gam} {Pn Nn P' N' : Nat} (h : ObjN Γ Pn Nn) (h1 : Pn ≤ P')
    (h2 : P' + N' ≤ Pn + Nn) : ObjN Γ P' N' := by
  obtain ⟨x, hx, ht, h3, h4⟩ := h
  exact ⟨x, hx, ht, by omega, by omega⟩

theorem cell_ne_n {Ar : BitVec 64} {n j k : Nat} (hAr : Ar.toNat + n ≤ heapEnd) (hj : 8 * j + 8 ≤ n)
    (hk : 8 * k + 8 ≤ n) (hne : j ≠ k) :
    Ar + BitVec.ofNat 64 (8 * k) ≠ Ar + BitVec.ofNat 64 (8 * j) := by
  intro e
  have hse2 : heapEnd < 2 ^ 64 := by decide
  have := congrArg BitVec.toNat e
  rw [BitVec.toNat_add, BitVec.toNat_add, BitVec.toNat_ofNat, BitVec.toNat_ofNat,
    Nat.mod_eq_of_lt (by omega : 8 * k < 2 ^ 64), Nat.mod_eq_of_lt (by omega : 8 * j < 2 ^ 64),
    Nat.mod_eq_of_lt (by omega), Nat.mod_eq_of_lt (by omega)] at this
  omega

theorem rk_nil (n : Nat) (Ar : BitVec 64) (m : Mem) : RK n Ar [] m := fun _ h => by simp at h

/-- A block store at another slot keeps the known words. -/
theorem rk_store {n j : Nat} {Ar : BitVec 64} {ks : List (Nat × BitVec 64)} {m mem : Mem}
    (hAr : Ar.toNat + n ≤ heapEnd) (hj : 8 * j + 8 ≤ n) (hne : ∀ kv ∈ ks, kv.1 ≠ j)
    (hmem : ∀ y, y ≠ Ar + BitVec.ofNat 64 (8 * j) → mem y = m y) (h : RK n Ar ks m) :
    RK n Ar ks mem := fun kv hkv => by
  obtain ⟨h1, h2⟩ := h kv hkv
  refine ⟨h1, ?_⟩
  rw [Hooks.rd_congr (hmem _ (cell_ne_n hAr hj h1 (Ne.symm (hne kv hkv))))]
  exact h2

/-- A store outside the block keeps the known words. -/
theorem rk_other {n : Nat} {Ar w : BitVec 64} {ks : List (Nat × BitVec 64)} {m mem : Mem}
    (hAr : Ar.toNat + n ≤ heapEnd) (hA8 : Ar.toNat % 8 = 0) (hov : ¬ Overlap Ar.toNat n w)
    (hmem : ∀ y, y ≠ w → mem y = m y) (h : RK n Ar ks m) : RK n Ar ks mem := fun kv hkv => by
  obtain ⟨h1, h2⟩ := h kv hkv
  refine ⟨h1, ?_⟩
  have hse2 : heapEnd < 2 ^ 64 := by decide
  have hc : (Ar + BitVec.ofNat 64 (8 * kv.1)).toNat = Ar.toNat + 8 * kv.1 := by
    rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega),
      Nat.mod_eq_of_lt (by omega)]
  have hne : Ar + BitVec.ofNat 64 (8 * kv.1) ≠ w := by
    rintro rfl
    exact hov ⟨by rw [hc]; omega, by rw [hc]; omega, by rw [hc]; omega⟩
  rw [Hooks.rd_congr (hmem _ hne)]
  exact h2

theorem slaObj_ext {Γ Γ' : Gam} (hx : Ext Γ Γ') {arr cnt : BitVec 64} (h : SlaObj Γ arr cnt) :
    SlaObj Γ' arr cnt := by
  rcases h with h | ⟨o, ho, h1, h2, h3, h4⟩
  · exact Or.inl h
  · obtain ⟨o', ho', hb, ht, hs⟩ := hx o ho
    exact Or.inr ⟨o', ho', hb.trans h1, ht.trans h2, by omega, h4⟩

theorem heapEnd_lt64 : heapEnd < 2 ^ 64 := by decide

/-- A cell of the array is inside the object. -/
theorem sla_inObj {Γ : Gam} {arr cnt : BitVec 64} (h : SlaObj Γ arr cnt) {i d : Nat}
    (hi : i < cnt.toNat) (hd : d < 16) :
    InObj Γ (arr + BitVec.ofNat 64 (16 * i + d)).toNat := by
  rcases h with h | ⟨o, ho, h1, h2, h3, h4⟩
  · omega
  · have hc : (arr + BitVec.ofNat 64 (16 * i + d)).toNat = arr.toNat + (16 * i + d) := by
      rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by have := heapEnd_lt64; omega),
        Nat.mod_eq_of_lt (by have := heapEnd_lt64; omega)]
    refine ⟨o, ho, ?_, ?_⟩
    · unfold Obj.lo; rw [h1, hc]; omega
    · unfold Obj.hi; rw [h1, hc]; omega

/-- A block store keeps `ES`. -/
theorem es_store {Pn Nn : Nat} {arr cnt Ar : BitVec 64} {Γ : Gam} {q : Ptrs} {m mem : Mem} {nb : Nat}
    (hAr : Ar.toNat + nb ≤ heapEnd) (hA8 : Ar.toNat % 8 = 0) {j : Nat} (hj : 8 * j + 8 ≤ nb)
    (hB : BlkF Ar nb Γ q) (hmem : ∀ y, y ≠ Ar + BitVec.ofNat 64 (8 * j) → mem y = m y)
    (h : ES Pn Nn arr cnt Γ q m) : ES Pn Nn arr cnt Γ q mem := by
  obtain ⟨h1, h2, h3, hS, h5⟩ := h
  have hse := heapEnd_lt64
  have hwn : (Ar + BitVec.ofNat 64 (8 * j)).toNat = Ar.toNat + 8 * j := by
    rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega), Nat.mod_eq_of_lt (by omega)]
  have hw : ¬ InObj Γ (Ar + BitVec.ofNat 64 (8 * j)).toNat :=
    (hB _ ⟨by rw [hwn]; omega, by rw [hwn]; omega, by rw [hwn]; omega⟩).1
  refine ⟨h1, h2, h3, ?_, h5⟩
  intro i hi
  have e1 : mem (arr + BitVec.ofNat 64 (16 * i)) = m (arr + BitVec.ofNat 64 (16 * i)) := by
    refine hmem _ (fun e => hw ?_)
    rw [← e]; exact sla_inObj h3 hi (d := 0) (by omega)
  have e2 : mem (arr + BitVec.ofNat 64 (16 * i + 8)) = m (arr + BitVec.ofNat 64 (16 * i + 8)) := by
    refine hmem _ (fun e => hw ?_)
    rw [← e]; exact sla_inObj h3 hi (d := 8) (by omega)
  rw [Hooks.rd_congr e1, Hooks.rd_congr e2]
  exact hS i hi

/-! ## The return -/

/-- `ES` and the object give the slice array's hook. -/
theorem slaW_of_es {Γ : Gam} {m : Mem} {Pn Nn : Nat} {arr cnt : BitVec 64} {q : Ptrs}
    (h : ES Pn Nn arr cnt Γ q m) (hx : ObjN Γ Pn Nn) : Hooks.SlaW Γ m arr cnt.toNat := by
  obtain ⟨h1, h2, h3, hS, h5⟩ := h
  obtain ⟨x, hxΓ, hxt, hxl, hxh⟩ := hx
  refine ⟨h3, fun i hi => ?_⟩
  have := hS i hi
  have hse : heapEnd < 2 ^ 32 := by decide
  have hb := h5 (by omega)
  unfold Hooks.slP Hooks.slL
  refine ⟨?_, ⟨x, hxΓ, hxt, ?_, ?_⟩, by omega⟩
  · unfold Hooks.SlIn
    refine ⟨?_, ?_, ?_⟩ <;> omega
  · omega
  · omega

/-- The record's hook from the known words. -/
theorem plW_of_ek {Γ : Gam} {m : Mem} {Pn Nn : Nat} {arr cnt Ar Pv Wd Nw : BitVec 64} {q : Ptrs}
    (hs : heapBase ≤ Ar.toNat ∧ Ar.toNat + 136 ≤ heapEnd)
    (h : ES Pn Nn arr cnt Γ q m) (hk : RK 136 Ar [(7, Nw), (6, Wd), (5, cnt), (4, arr), (0, Pv)] m)
    (hx : ObjN Γ Pn Nn) (hfee : Hooks.SlObj Γ (Pv + BitVec.ofNat 64 32) (BitVec.ofNat 64 20))
    (hN : Nw.toNat < 2 ^ 32) (hwd : Hooks.SlObj Γ Wd (BitVec.ofNat 64 (44 * Nw.toNat))) :
    Hooks.PlW Γ m (⟨Ar, tPL, 136⟩ : Obj) := by
  have e0 : Hooks.txF m (⟨Ar, tPL, 136⟩ : Obj) 0 = Pv := (hk (0, Pv) (by simp)).2
  have e4 : Hooks.txF m (⟨Ar, tPL, 136⟩ : Obj) 4 = arr := (hk (4, arr) (by simp)).2
  have e5 : Hooks.txF m (⟨Ar, tPL, 136⟩ : Obj) 5 = cnt := (hk (5, cnt) (by simp)).2
  have e6 : Hooks.txF m (⟨Ar, tPL, 136⟩ : Obj) 6 = Wd := (hk (6, Wd) (by simp)).2
  have e7 : Hooks.txF m (⟨Ar, tPL, 136⟩ : Obj) 7 = Nw := (hk (7, Nw) (by simp)).2
  refine ⟨by simp, by unfold Obj.lo; simp only; omega, ?_, ?_, ?_, ?_⟩
  · rw [e4, e5]; exact slaW_of_es h hx
  · rw [e0]; exact hfee
  · rw [e7]; exact hN
  · rw [e6, e7]; exact hwd


variable {σ : Type} {X : Ctx 64}

/-- **`return pl`**: the record becomes a `tPL` object. -/
theorem dp_ret {a : Act σ} (ha : ActOK a X) (hC : a.C = Types.guestC)
    (hH : a.H = Hooks.guestHooksR) (hgr : a.sg.grows = true)
    (hret : a.sg.ret = [.fits (.ptr tPL)]) {Ar : BitVec 64}
    (hs : heapBase ≤ Ar.toNat ∧ Ar.toNat + 136 ≤ heapEnd) (hA8 : Ar.toNat % 8 = 0)
    {Pn Nn : Nat} {arr cnt Pv Wd Nw : BitVec 64}
    (hx : ObjN a.Γ0 Pn Nn) (hfee : Hooks.SlObj a.Γ0 (Pv + BitVec.ofNat 64 32) (BitVec.ofNat 64 20))
    (hN : Nw.toNat < 2 ^ 32) (hwd : Hooks.SlObj a.Γ0 Wd (BitVec.ofNat 64 (44 * Nw.toNat)))
    {L : LocalsH → Prop} (hL : ∀ m, L m → m.lookup (nm "pl") = some (.val (.word Ar))) :
    HoareG σ X (DI a Ar 136 L (EKw (Ew (ES Pn Nn arr cnt)) 136 Ar
        [(7, Nw), (6, Wd), (5, cnt), (4, arr), (0, Pv)])) (.return (lv (nm "pl")))
      (Node.NQ a (fun Γ' p' v => RetOK Γ' a.p0 p' a.vs a.sg.ret v)) := by
  have hMono : HooksMono a.C a.H := by rw [hC, hH]; exact Hooks.guestHooksR_mono
  refine hoareG_return fun t hs' ⟨hLt, Γ, q, he, hh, hB, hn, hE, hk⟩ v hv => ?_
  have hv' : v = .val (.word Ar) := Option.some.inj (hv.symm.trans (ev_lw (hL _ hLt)))
  subst hv'
  refine ⟨by simp, fun r' hr' hna => ?_⟩
  cases hr'
  have hreg : (a.C.ty tPL).region = .heap := by rw [hC]; exact Types.recIds_region tPL (by simp)
  have hprot : ∀ k, (a.C.ty tPL).slot k = .prot := by
    rw [hC]; exact Hooks.pl_prot
  have hnt : a.C.tags.lookup tPL = none := by rw [hC]; exact Types.recIds_untagged tPL (by simp)
  have hmin : (a.C.ty tPL).minSz ≤ 136 := by rw [hC]; exact Types.recIds_minSz.2.2.2.1
  obtain ⟨hExt, hh2⟩ := Rec.heap_adopt ha hMono he hh (Ar := Ar) (n := 136) (ty := tPL) hreg hprot
    hnt (by decide) (by decide) hmin hs hA8 hB hn hgr (fun hLn => by
      rw [hH]
      have hLn' : Layout Types.guestC q (Γ ++ [(⟨Ar, tPL, 136⟩ : Obj)]) := hC ▸ hLn
      have hxe : Ext Γ (Γ ++ [(⟨Ar, tPL, 136⟩ : Obj)]) := Struct.ext_snoc Γ _
      have hE' : ES Pn Nn arr cnt (Γ ++ [(⟨Ar, tPL, 136⟩ : Obj)]) q t.memory := by
        obtain ⟨h1, h2, h3, h4, h5⟩ := hE
        exact ⟨h1, h2, slaObj_ext hxe h3, h4, h5⟩
      exact Hooks.wf_of_plW (s := t) (o := (⟨Ar, tPL, 136⟩ : Obj)) rfl
        (List.mem_append_right _ (List.mem_singleton_self _)) (Hooks.gamOK_of_layout hLn')
        (plW_of_ek hs hE' hk (objN_ext (ext_trans he hxe) hx) (Hooks.slObj_ext (ext_trans he hxe) hfee)
          hN (Hooks.slObj_ext (ext_trans he hxe) hwd)))
  refine ⟨_, q, hExt, heap_congr (s := t) ha.hH rfl rfl rfl rfl hh2, fun v' hv' => ?_⟩
  cases hv'
  intro i r w hr hw
  rw [hret] at hr
  rcases i with _ | i
  · simp only [List.getElem?_cons_zero, Option.some.injEq] at hr
    subst hr
    simp [flattenHOL] at hw
    subst hw
    exact ⟨⟨Ar, tPL, 136⟩, List.mem_append_right _ (List.mem_singleton_self _), rfl, rfl⟩
  · simp at hr


/-! ## Scratch stores -/

theorem cell_in_heap {a : Act σ} {Γ : Gam} {q : Ptrs} {s : State σ} (hh : Heap a Γ q s) {w : BitVec 64}
    (hc : SCell a.Cb Γ w) : InObj Γ w.toNat := by
  obtain ⟨p1, hp1, hord, hL, -⟩ := hh.1
  obtain ⟨o, ho, k, hk, -, rfl⟩ := hc
  exact cell_in hord hL ho hk

/-- A store into a `scalar` cell of the current `Γ`, exposing that the cell is outside the block. -/
theorem hoareG_stsDI' {a : Act σ} (ha : ActOK a X) {Ar : BitVec 64} {n : Nat}
    {L : LocalsH → Prop} {E E' : Gam → Ptrs → Mem → LocalsH → Prop} {ea ev' : ExpHOL 64}
    (haddr : ∀ s : State σ, InCtx s X → L s.locals → ∀ Γ q, Ext a.Γ0 Γ → Heap a Γ q s →
      E Γ q s.memory s.globals → ∀ w, ev s ea = some (.val (.word w)) → SCell a.Cb Γ w)
    (hval : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s ev' = some v →
      ∃ x, v = .val (.word x))
    (hE : ∀ (s : State σ) (Γ : Gam) (q : Ptrs) (w x : BitVec 64) (mem : Mem),
      InCtx s X → L s.locals → ev s ea = some (.val (.word w)) →
      ev s ev' = some (.val (.word x)) → rd mem w = x → (∀ y, y ≠ w → mem y = s.memory y) →
      ¬ Overlap Ar.toNat n w → E Γ q s.memory s.globals → E' Γ q mem s.globals) :
    HoareG σ X (DI a Ar n L E) (.store ea ev') (DQ a Ar n L E') := by
  refine hoareG_store fun s hs ⟨hL, Γ, p, he, hh, hB, hn, hEs⟩ w v mem hw hv hst => ?_
  obtain ⟨x, rfl⟩ := hval s hs hL v hv
  have hf : flattenHOL (ValueHOL.val (HolWordLab.word x) : ValueHOL 64) = [HolWordLab.word x] := by
    simp [flattenHOL]
  have hmem' := Struct.store_word hst
  have hst1 := hst
  rw [hf] at hst1
  obtain ⟨hm, hdom⟩ := Helpers.store1_mod hst1
  have hdom' : s.memaddrs w := hdom
  have hc := haddr s hs hL Γ p he hh hEs w hw
  have hov : ¬ Overlap Ar.toNat n w := fun ho => (hB w ho).1 (cell_in_heap hh hc)
  refine ⟨fun _ => ⟨hL, Γ, p, he, heap_store_scell ha hh hm fun y hy => hy ▸ hc, hB, hn, ?_⟩,
    fun r' h => absurd h (by simp)⟩
  refine hE s Γ p w x mem hs hL hw hv ?_ ?_ hov hEs
  · rw [hmem']; exact Struct.rd_upd_self _ _ _
  · intro y hy; rw [hmem']; exact Struct.upd_ne hy

/-! ## Stability across a summarised call -/

/-- The object holding a cell of the array. -/
theorem sla_obj {Γ : Gam} {arr cnt : BitVec 64} (h : SlaObj Γ arr cnt) {i d : Nat}
    (hi : i < cnt.toNat) (hd : d < 16) :
    ∃ o ∈ Γ, o.ty = tSLA ∧ o.lo ≤ (arr + BitVec.ofNat 64 (16 * i + d)).toNat ∧
      (arr + BitVec.ofNat 64 (16 * i + d)).toNat < o.hi := by
  rcases h with h | ⟨o, ho, h1, h2, h3, h4⟩
  · omega
  · have hc : (arr + BitVec.ofNat 64 (16 * i + d)).toNat = arr.toNat + (16 * i + d) := by
      rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by have := heapEnd_lt64; omega),
        Nat.mod_eq_of_lt (by have := heapEnd_lt64; omega)]
    refine ⟨o, ho, h2, ?_, ?_⟩
    · unfold Obj.lo; rw [h1, hc]; omega
    · unfold Obj.hi; rw [h1, hc]; omega

/-- The object holding a cell of a slice array given by `n`. -/
theorem sla_objN {Γ : Gam} {arr : BitVec 64} {n : Nat} (h : Hooks.SubArr Γ arr n tSLA 16) {i d : Nat}
    (hi : i < n) (hd : d < 16) :
    ∃ o ∈ Γ, o.ty = tSLA ∧ o.lo ≤ (arr + BitVec.ofNat 64 (16 * i + d)).toNat ∧
      (arr + BitVec.ofNat 64 (16 * i + d)).toNat < o.hi := by
  rcases h with h | ⟨o, ho, h1, h2, h3, h4⟩
  · omega
  · have hc : (arr + BitVec.ofNat 64 (16 * i + d)).toNat = arr.toNat + (16 * i + d) := by
      rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by have := heapEnd_lt64; omega),
        Nat.mod_eq_of_lt (by have := heapEnd_lt64; omega)]
    refine ⟨o, ho, h2, ?_, ?_⟩
    · unfold Obj.lo; rw [h1, hc]; omega
    · unfold Obj.hi; rw [h1, hc]; omega

theorem sla_cell_frameN {a : Act σ} (hCb : a.Cb = Types.guestC) (hC : a.C = Types.guestC)
    {sg' : Sig} {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ} (co : COut a sg' Γ Γ' q q' s st)
    {arr : BitVec 64} {n : Nat} (h : Hooks.SubArr Γ arr n tSLA 16) {i d : Nat} (hi : i < n) (hd : d < 16) :
    st.memory (arr + BitVec.ofNat 64 (16 * i + d)) = s.memory (arr + BitVec.ofNat 64 (16 * i + d)) := by
  obtain ⟨p1, hp1, hord, hL, -⟩ := co.heap0.1
  have hqp : q = p1 := Option.some.inj (co.heap0.2.1.symm.trans hp1)
  subst hqp
  have hL' : Layout Types.guestC q Γ := hC ▸ hL
  have hG := Hooks.gamOK_of_layout hL'
  obtain ⟨o, ho, hot, hlo, hhi⟩ := sla_objN h hi hd
  refine co.frame _ ?_ ?_
  · rintro ⟨o', ho', k, hk, hslot, hc⟩
    have hct := cell_toNat hord hL ho' hk
    have hk' := hk
    unfold Obj.HasSlot at hk'
    have e : o = o' := Hooks.gam_eq hG ho ho' (n := (arr + BitVec.ofNat 64 (16 * i + d)).toNat) hlo hhi
      (by rw [hc, hct.1]; omega) (by rw [hc, hct.1]; unfold Obj.hi Obj.lo; omega)
    subst e
    rw [hCb, hot] at hslot
    exact hslot (Hooks.sla_prot k)
  · have hlv := (hL.1 o ho).2.2.2.2
    rw [hC, hot, Hooks.sla_heap] at hlv
    simp only [Region.Live] at hlv
    unfold Ptrs.Allocated
    left
    unfold Obj.lo Obj.hi at *
    omega

theorem sla_cell_frame {a : Act σ} (hCb : a.Cb = Types.guestC) (hC : a.C = Types.guestC)
    {sg' : Sig} {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ} (co : COut a sg' Γ Γ' q q' s st)
    {arr cnt : BitVec 64} (h : SlaObj Γ arr cnt) {i d : Nat} (hi : i < cnt.toNat) (hd : d < 16) :
    st.memory (arr + BitVec.ofNat 64 (16 * i + d)) = s.memory (arr + BitVec.ofNat 64 (16 * i + d)) := by
  obtain ⟨p1, hp1, hord, hL, -⟩ := co.heap0.1
  have hqp : q = p1 := Option.some.inj (co.heap0.2.1.symm.trans hp1)
  subst hqp
  have hL' : Layout Types.guestC q Γ := hC ▸ hL
  have hG := Hooks.gamOK_of_layout hL'
  obtain ⟨o, ho, hot, hlo, hhi⟩ := sla_obj h hi hd
  refine co.frame _ ?_ ?_
  · rintro ⟨o', ho', k, hk, hslot, hc⟩
    have hct := cell_toNat hord hL ho' hk
    have hk' := hk
    unfold Obj.HasSlot at hk'
    have e : o = o' := Hooks.gam_eq hG ho ho' (n := (arr + BitVec.ofNat 64 (16 * i + d)).toNat) hlo hhi
      (by rw [hc, hct.1]; omega) (by rw [hc, hct.1]; unfold Obj.hi Obj.lo; omega)
    subst e
    rw [hCb, hot] at hslot
    exact hslot (Hooks.sla_prot k)
  · have hlv := (hL.1 o ho).2.2.2.2
    rw [hC, hot, Hooks.sla_heap] at hlv
    simp only [Region.Live] at hlv
    unfold Ptrs.Allocated
    left
    unfold Obj.lo Obj.hi at *
    omega

/-- A summarised call keeps the block's cells. -/
theorem blk_call_frame {a : Act σ} {sg' : Sig} {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ}
    (co : COut a sg' Γ Γ' q q' s st) {Ar : BitVec 64} {n j : Nat} (hAr : Ar.toNat + n ≤ heapEnd)
    (hA8 : Ar.toNat % 8 = 0) (hB : BlkF Ar n Γ q) (hj : 8 * j + 8 ≤ n) :
    st.memory (Ar + BitVec.ofNat 64 (8 * j)) = s.memory (Ar + BitVec.ofNat 64 (8 * j)) := by
  have hse := heapEnd_lt64
  have hwn : (Ar + BitVec.ofNat 64 (8 * j)).toNat = Ar.toNat + 8 * j := by
    rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega),
      Nat.mod_eq_of_lt (by omega)]
  have hov : Overlap Ar.toNat n (Ar + BitVec.ofNat 64 (8 * j)) :=
    ⟨by rw [hwn]; omega, by rw [hwn]; omega, by rw [hwn]; omega⟩
  refine co.frame _ ?_ (hB _ hov).2
  rintro ⟨o', ho', k, hk, -, hc⟩
  obtain ⟨p1, hp1, hord, hL, -⟩ := co.heap0.1
  exact (hB _ hov).1 (hc ▸ cell_in hord hL ho' hk)

theorem rk_call {a : Act σ} {sg' : Sig} {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ}
    (co : COut a sg' Γ Γ' q q' s st) {Ar : BitVec 64} {n : Nat} (hAr : Ar.toNat + n ≤ heapEnd)
    (hA8 : Ar.toNat % 8 = 0) (hB : BlkF Ar n Γ q) {ks : List (Nat × BitVec 64)}
    (h : RK n Ar ks s.memory) : RK n Ar ks st.memory := fun kv hkv => by
  obtain ⟨h1, h2⟩ := h kv hkv
  exact ⟨h1, by rw [Hooks.rd_congr (blk_call_frame co hAr hA8 hB h1)]; exact h2⟩

theorem es_call {a : Act σ} (hCb : a.Cb = Types.guestC) (hC : a.C = Types.guestC)
    {sg' : Sig} {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ} (co : COut a sg' Γ Γ' q q' s st)
    {Pn Nn : Nat} {arr cnt : BitVec 64}
    (h : ES Pn Nn arr cnt Γ q s.memory) : ES Pn Nn arr cnt Γ' q' st.memory := by
  obtain ⟨h1, h2, h3, hS, h5⟩ := h
  refine ⟨h1, h2, slaObj_ext co.ext h3, ?_, h5⟩
  intro i hi
  have e1 := sla_cell_frame hCb hC co h3 hi (d := 0) (by omega)
  rw [Nat.add_zero] at e1
  have e2 := sla_cell_frame hCb hC co h3 hi (d := 8) (by omega)
  rw [Hooks.rd_congr e1, Hooks.rd_congr e2]
  exact hS i hi

/-- A slice array's hook survives a summarised call. -/
theorem slaW_call {a : Act σ} (hCb : a.Cb = Types.guestC) (hC : a.C = Types.guestC)
    {sg' : Sig} {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ} (co : COut a sg' Γ Γ' q q' s st)
    {arr : BitVec 64} {n : Nat}
    (h : Hooks.SlaW Γ s.memory arr n) : Hooks.SlaW Γ' st.memory arr n := by
  refine Hooks.sla_ext co.ext (Hooks.sla_frame h ?_)
  rintro b ⟨i, hi, rfl | rfl⟩
  · have := sla_cell_frameN hCb hC co h.1 hi (d := 0) (by omega)
    rwa [Nat.add_zero] at this
  · exact sla_cell_frameN hCb hC co h.1 hi (d := 8) (by omega)

end InitECandidate.Solver.MemSafe.Rec
