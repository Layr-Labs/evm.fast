import InitECandidate.Solver.MemSafe.Node.BlkObj

set_option autoImplicit false

/-!
# A fully written block becomes a typed object (`heap_addObj`)

The generic add-object step of the activation invariant for **tagged, mixed-slot** types (the
existing `Struct.trk_alloc_obj`, `HtabEntries.trk_addObjI`, `Frames.Ctor.G_addObj` need untagged
types). `BlkW` (the block, its written words) plus the per-type facts `ObjSpec` give
`Heap a (Γ ++ [⟨Ar, ty, n⟩]) q u`: the layout (`Struct.layout_snoc`), `Fields`, `Tags` and the hook
(`Struct.G_of`), and `NewFresh` (the block is unallocated at entry, allocated now).

`hoareG_ctorStores`: a list of one-word stores into the block, then `return nd`, ends in `NQ`
with the result `[fits nodeU]`.
-/

set_option maxRecDepth 100000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Node
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.MptH

variable {σ : Type} {X : Ctx 64}

theorem fresh_of_cell {p p' : Ptrs} (hp : p.Ordered) (hp' : p'.Ordered) {c b : Nat}
    (hc8 : c % 8 = 0) (h1 : ¬ p.Allocated c) (h2 : p'.Allocated c) (hb1 : c ≤ b)
    (hb2 : b < c + 8) {a : BitVec 64} (ha : a.toNat = b) : Fresh p p' a := by
  unfold Ptrs.Allocated at h1 h2
  unfold Fresh
  rw [ha]
  unfold Ptrs.Ordered heapBase heapEnd scratchEnd at *
  omega

/-- The per-type facts of a constructor's object. -/
structure ObjSpec (a : Act σ) (ty n : Nat) (Sp : Nat → BitVec 64 → Prop) : Prop where
  reg : (a.C.ty ty).region = .heap
  n8 : n % 8 = 0
  n0 : 0 < n
  minSz : (a.C.ty ty).minSz ≤ n
  fit : ∀ i, 8 * i + 8 ≤ n → ∀ x, Sp i x → Fits a.Γ0 ((a.C.ty ty).slot i) x
  tag : ∀ x tag, Sp 0 x → a.C.tags.lookup ty = some tag → x = BitVec.ofNat 64 tag
  /-- the new object's hook, from what its slots hold (stage 2b: leaf / ext / branch invariants) -/
  wf : ∀ (Γ' : Gam) (u : State σ) (Ar : BitVec 64) (q : Ptrs), Layout a.C q Γ' → Ext a.Γ0 Γ' →
    (⟨Ar, ty, n⟩ : Obj) ∈ Γ' → Ar.toNat + n ≤ heapEnd →
    (∀ i, 8 * i + 8 ≤ n → Sp i (rd u.memory (Ar + BitVec.ofNat 64 (8 * i)))) →
    a.H.wf Γ' u ⟨Ar, ty, n⟩
  grows : a.sg.grows = true
  ret : a.sg.ret = [.fits Types.nodeU]
  nodeTy : ty ∈ [Types.tNHASHED, Types.tNLEAF, Types.tNEXT, Types.tNBRANCH]

theorem heap_addObj {a : Act σ} (ha : ActOK a X) (hM : HooksMono a.C a.H) {Ar : BitVec 64}
    {n ty : Nat} {Sp : Nat → BitVec 64 → Prop} {D : Nat → Prop} {u : State σ}
    (hO : ObjSpec a ty n Sp) (hs : heapBase ≤ Ar.toNat ∧ Ar.toNat + n ≤ heapEnd)
    (hA8 : Ar.toNat % 8 = 0) (hD : ∀ i, 8 * i + 8 ≤ n → D i) (hB : BlkW a Ar n Sp D u) :
    ∃ (Γ : Gam) (q : Ptrs), Ext a.Γ0 Γ ∧ Heap a Γ q u ∧ (⟨Ar, ty, n⟩ : Obj) ∈ Γ := by
  obtain ⟨⟨Γ, q, he, hh, hF, hn⟩, hmem⟩ := hB
  have hordq := heap_ord hh
  have hh0 := hh
  obtain ⟨hG, hps, hm1, hext, hnf, hmod, hpg, hgr⟩ := hh0
  obtain ⟨p1, hp1, hord, hL, hFl, hT, hGl, hW⟩ := hG
  have hq : q = p1 := Option.some.inj (hps.symm.trans hp1)
  subst hq
  have hse : heapEnd < 2 ^ 64 := by decide
  have hcell : ∀ c : Nat, c < 2 ^ 64 → (BitVec.ofNat 64 c).toNat = c := fun c hc => by
    rw [BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt hc
  have hOvl : ∀ c : Nat, c % 8 = 0 → Ar.toNat ≤ c → c < Ar.toNat + n →
      Overlap Ar.toNat n (BitVec.ofNat 64 c) := by
    intro c hc8 h1 h2
    have hc := hcell c (by omega)
    exact ⟨by rw [hc]; exact hc8, by rw [hc]; omega, by rw [hc]; exact h2⟩
  have hOv : ∀ c : Nat, c % 8 = 0 → Ar.toNat ≤ c → c < Ar.toNat + n →
      ¬ InObj Γ c ∧ q.Allocated c := by
    intro c hc8 h1 h2
    have := hF _ (hOvl c hc8 h1 h2)
    rwa [hcell c (by omega)] at this
  have hnA : ∀ c : Nat, c % 8 = 0 → Ar.toNat ≤ c → c < Ar.toNat + n → ¬ a.p0.Allocated c := by
    intro c hc8 h1 h2
    have := hn _ (hOvl c hc8 h1 h2)
    rwa [hcell c (by omega)] at this
  have hn8 := hO.n8
  have hn0 := hO.n0
  have hlive : (a.C.ty ty).region.Live q Ar.toNat n := by
    rw [hO.reg]
    have h2 := (hOv (Ar.toNat + n - 8) (by omega) (by omega) (by omega)).2
    unfold Ptrs.Allocated at h2
    unfold Ptrs.Ordered at hordq
    simp only [Region.Live]
    unfold heapBase heapEnd scratchEnd at *
    omega
  have hok : Struct.ObjOK a.C q (⟨Ar, ty, n⟩ : Obj) :=
    ⟨hA8, hn8, hn0, hO.minSz, hlive⟩
  have hdisj : ∀ y ∈ Γ, Struct.Disj y (⟨Ar, ty, n⟩ : Obj) := by
    intro y hy
    simp only [Struct.Disj, Obj.hi, Obj.lo]
    by_contra hcon
    simp only [not_or, not_le] at hcon
    obtain ⟨h1, h2, h3, h4, h5⟩ := hL.1 y hy
    change y.base.toNat % 8 = 0 at h1
    obtain ⟨c, hc8, hc1, hc2, hc3, hc4⟩ : ∃ c, c % 8 = 0 ∧ y.base.toNat ≤ c ∧
        c < y.base.toNat + y.size ∧ Ar.toNat ≤ c ∧ c < Ar.toNat + n := by
      by_cases h : y.base.toNat ≤ Ar.toNat
      · exact ⟨Ar.toNat, hA8, h, by omega, le_rfl, by omega⟩
      · exact ⟨y.base.toNat, h1, le_rfl, by omega, by omega, by omega⟩
    exact (hOv c hc8 hc3 hc4).1 ⟨y, hy, hc1, hc2⟩
  have hLn : Layout a.C q (Γ ++ [(⟨Ar, ty, n⟩ : Obj)]) := Struct.layout_snoc hL hok hdisj
  have hextn : Ext a.Γ0 (Γ ++ [(⟨Ar, ty, n⟩ : Obj)]) := ext_trans hext (Struct.ext_snoc Γ _)
  have hGn : G a.C a.H (Γ ++ [(⟨Ar, ty, n⟩ : Obj)]) u := by
    refine Struct.G_of (D := fun _ => False) ha.hH hM ⟨q, hps, hord, hL, hFl, hT, hGl, hW⟩ hps
      hordq hLn (Struct.ext_snoc Γ _) rfl rfl (fun _ _ => rfl) (fun _ _ _ => rfl)
      (fun _ _ => rfl) ?_ ?_ ?_
    · intro o' ho' k hk
      rcases List.mem_append.mp ho' with ho' | ho'
      · exact Or.inl ⟨o', ho', rfl, rfl, hk, fun h => h⟩
      · simp only [List.mem_singleton] at ho'
        subst ho'
        right
        have hk' : 8 * k + 8 ≤ n := hk
        refine fits_ext hextn (hO.fit k hk' _ ?_)
        exact hmem k (hD k hk')
    · intro o' ho' tag ht
      rcases List.mem_append.mp ho' with ho' | ho'
      · exact Or.inl ⟨o', ho', rfl, rfl, fun h => h⟩
      · simp only [List.mem_singleton] at ho'
        subst ho'
        right
        have h0 := hmem 0 (hD 0 (by omega))
        have : Ar + BitVec.ofNat 64 (8 * 0) = Ar := by simp
        rw [this] at h0
        exact hO.tag _ tag h0 ht
    · intro o' ho'
      rcases List.mem_append.mp ho' with ho' | ho'
      · exact Or.inl ⟨o', ho', rfl, rfl, fun _ _ h => h⟩
      · simp only [List.mem_singleton] at ho'
        subst ho'
        exact Or.inr (hO.wf _ _ _ _ hLn hextn (by simp) hs.2
          (fun i hi => hmem i (hD i hi)))
  have hnfn : NewFresh a.Γ0 (Γ ++ [(⟨Ar, ty, n⟩ : Obj)]) a.p0 q := by
    intro o ho b h1 h2
    rcases List.mem_append.mp ho with ho | ho
    · exact hnf o ho b h1 h2
    · simp only [List.mem_singleton] at ho
      subst ho
      right
      have h1' : Ar.toNat ≤ b.toNat := h1
      have h2' : b.toNat < Ar.toNat + n := h2
      exact fresh_of_cell (c := b.toNat / 8 * 8) ha.hord0 hordq (by omega)
        (hnA _ (by omega) (by omega) (by omega)) (hOv _ (by omega) (by omega) (by omega)).2
        (by omega) (by omega) rfl
  exact ⟨Γ ++ [(⟨Ar, ty, n⟩ : Obj)], q, hextn, ⟨hGn, hps, hm1, hextn, hnfn, hmod, hpg,
    fun h => by rw [hO.grows] at h; cases h⟩, List.mem_append_right _ (List.mem_singleton_self _)⟩

/-- `return nd` of a fully written block: the post `NQ` with the result `[fits nodeU]`. -/
theorem hoareG_retNew {a : Act σ} (ha : ActOK a X) (hM : HooksMono a.C a.H) {n ty : Nat}
    {Sp : Nat → BitVec 64 → Prop} {D : Nat → Prop} (hO : ObjSpec a ty n Sp) {L : LocalsH → Prop}
    {Ar : BitVec 64} {nd : MlS} (hs : heapBase ≤ Ar.toNat ∧ Ar.toNat + n ≤ heapEnd)
    (hA8 : Ar.toNat % 8 = 0) (hD : ∀ i, 8 * i + 8 ≤ n → D i)
    (hLnd : ∀ m, L m → m.lookup nd = some (.val (.word Ar))) :
    HoareG σ X (fun s => L s.locals ∧ BlkW a Ar n Sp D s) (.return (lv nd))
      (NQ a (fun Γ' p' v => RetOK Γ' a.p0 p' a.vs a.sg.ret v)) := by
  refine hoareG_return fun t _ ⟨hL, hB⟩ v hv => ?_
  have hv' : v = .val (.word Ar) := Option.some.inj (hv.symm.trans (ev_lw (hLnd _ hL)))
  subst hv'
  obtain ⟨Γ', q, he', hh', hmem⟩ := heap_addObj ha hM hO hs hA8 hD hB
  refine ⟨by simp, fun r' hr' hna => ?_⟩
  cases hr'
  refine ⟨Γ', q, he', heap_congr (s := t) ha.hH rfl rfl rfl rfl hh', fun v' hv' => ?_⟩
  cases hv'
  intro i r w hr hw
  rw [hO.ret] at hr
  rcases i with _ | i
  · simp only [List.getElem?_cons_zero, Option.some.injEq] at hr
    subst hr
    simp [flattenHOL] at hw
    subst hw
    exact Or.inr ⟨_, hmem, rfl, hO.nodeTy⟩
  · simp at hr

/-- The program: stores `st nd + 8 k, e` for each `(k, e)`, then `return nd`. -/
def storeSeqR (nd : MlS) : List (Nat × ExpHOL 64) → ProgHOL 64
  | [] => .return (lv nd)
  | (k, e) :: xs => .seq (.store (.op .add [lv nd, cw (8 * k)]) e) (storeSeqR nd xs)

/-- **A constructor's stores and return.** -/
theorem hoareG_ctorStores {a : Act σ} (ha : ActOK a X) (hM : HooksMono a.C a.H) {n ty : Nat}
    {Sp : Nat → BitVec 64 → Prop} (hO : ObjSpec a ty n Sp) {L : LocalsH → Prop}
    {Ar : BitVec 64} {nd : MlS} (hs : heapBase ≤ Ar.toNat ∧ Ar.toNat + n ≤ heapEnd)
    (hA8 : Ar.toNat % 8 = 0) (hLnd : ∀ m, L m → m.lookup nd = some (.val (.word Ar))) :
    ∀ (xs : List (Nat × ExpHOL 64)) (D : Nat → Prop), (∀ i, D i → 8 * i + 8 ≤ n) →
      (∀ kx ∈ xs, 8 * kx.1 + 8 ≤ n ∧ ∃ x, Sp kx.1 x ∧
        ∀ s : State σ, L s.locals → ev s kx.2 = some (.val (.word x))) →
      (∀ i, 8 * i + 8 ≤ n → D i ∨ ∃ kx ∈ xs, kx.1 = i) →
      HoareG σ X (fun s => L s.locals ∧ BlkW a Ar n Sp D s) (storeSeqR nd xs)
        (NQ a (fun Γ' p' v => RetOK Γ' a.p0 p' a.vs a.sg.ret v)) := by
  have hrng : Ar.toNat + n < 2 ^ 64 := by
    have : heapEnd < 2 ^ 64 := by decide
    omega
  intro xs
  induction xs with
  | nil =>
    intro D hD hxs hcov
    refine hoareG_retNew ha hM hO hs hA8 (fun i hi => ?_) hLnd
    rcases hcov i hi with h | ⟨kx, hkx, -⟩
    · exact h
    · simp at hkx
  | cons kx xs ih =>
    intro D hD hxs hcov
    obtain ⟨k, e⟩ := kx
    obtain ⟨hk, x, hSp, hev⟩ := hxs (k, e) (List.mem_cons_self ..)
    refine hoareG_seqW (L := L) (Ar := Ar) (n := n) (Sp := Sp) (D := fun i => D i ∨ i = k) nq_of_abn ?_ ?_
    · refine hoareG_stSlot ha (j := k) hrng hD hk ?_ ?_
      · intro s hs hL w hw
        rw [ev_add2 (ev_lw (hLnd _ hL)) (ev_cw _ (8 * k))] at hw
        cases hw
        rfl
      · intro s hs hL v hv
        rw [hev s hL] at hv
        cases hv
        exact ⟨x, rfl, hSp⟩
    · refine ih _ (fun i hi => ?_) (fun kx' hkx' => hxs kx' (List.mem_cons_of_mem _ hkx'))
        (fun i hi => ?_)
      · rcases hi with hi | rfl
        · exact hD i hi
        · exact hk
      · rcases hcov i hi with h | ⟨kx', hkx', hi'⟩
        · exact Or.inl (Or.inl h)
        · rcases List.mem_cons.mp hkx' with rfl | hm
          · exact Or.inl (Or.inr hi'.symm)
          · exact Or.inr ⟨kx', hm, hi'⟩

end InitECandidate.Solver.MemSafe.Node

#print axioms InitECandidate.Solver.MemSafe.Node.heap_addObj
#print axioms InitECandidate.Solver.MemSafe.Node.hoareG_ctorStores
