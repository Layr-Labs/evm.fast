import InitECandidate.Solver.MemSafe.Rec.TxLeaf
import InitECandidate.Solver.MemSafe.WaveHelpers.Slices
import InitECandidate.Solver.MemSafe.WaveHelpers.HSeq

set_option autoImplicit false

/-!
# Writer specs and the cursor step of `tx_encode_generic`

* **`WSpec σ X f Pre F`**: a writer whose first argument is a destination `D`: every good result
  (under `Pre vs s`) keeps the globals, changes memory only in `[D, D + F vs s)` and in the free
  heap of its entry (`FreeHeap`: above `heap_ptr`, below `heapEnd`; a released scratch window),
  and a return is a word `k ≤ F vs s` (the bytes written).
* `wspec_of_footRet`: from a `FootRet` with a footprint inside `[D, D + F)` and a return `≤ F`;
  instances `wspec_rlp_encode_word`, `wspec_rlp_encode_bytes`, `wspec_tx_put_to`,
  `wspec_tx_put_blob_hashes`.
* `heap_mod_out`: changing only cells outside `Γ` and unallocated at the activation's entry keeps
  the activation invariant.
* `BlkH a B n t`: the activation invariant with the fresh block `[B, B + n)` (outside `Γ`,
  allocated, unallocated at entry).
* **`hoareG_wstep`**: the cursor step `w = f(p, args); p = p + w` in a block: from `p = B + 10 + u`
  (`u ≤ U`) to `p = B + 10 + u'` with `u' ≤ U + m`, when `F ≤ m` and `10 + U + m ≤ n`.
-/

set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64}

/-! ## Writer specs -/

/-- The free heap of a state: above `heap_ptr`, below `heapEnd`. -/
def FreeHeap (s : State σ) (a : BitVec 64) : Prop :=
  ∃ h : BitVec 64, gword s gHeap = some h ∧ h.toNat ≤ a.toNat ∧ a.toNat < heapEnd

/-- **A writer** into `[D, D + F)` (`D` its first argument), returning the bytes written. -/
def WSpec (σ : Type) (X : Ctx 64) (f : MlS) (Pre : List (ValueHOL 64) → State σ → Prop)
    (F : List (ValueHOL 64) → State σ → Nat) : Prop :=
  FunSpec σ X f (fun vs s r t => Good (some r) → Pre vs s → t.globals = s.globals ∧
    ModifiesOnly (fun a => (∃ D : BitVec 64, argW vs 0 = some D ∧ Overlap D.toNat (F vs s) a) ∨
      FreeHeap s a) s.memory t.memory ∧
    ∀ v, r = .returned v → ∃ k, v = .val (.word (BitVec.ofNat 64 k)) ∧ k ≤ F vs s)

theorem wspec_of_footRet {f : MlS} {Pre : List (ValueHOL 64) → Prop}
    {R : List (ValueHOL 64) → BitVec 64 → Prop} {Ret : List (ValueHOL 64) → ValueHOL 64 → Prop}
    (hf : FootRet σ X f Pre R Ret) {Pre' : List (ValueHOL 64) → State σ → Prop}
    {F : List (ValueHOL 64) → State σ → Nat} (hP : ∀ vs s, Pre' vs s → Pre vs)
    (hR : ∀ vs s a, Pre' vs s → R vs a → ∃ D : BitVec 64, argW vs 0 = some D ∧ Overlap D.toNat (F vs s) a)
    (hRet : ∀ vs s v, Pre' vs s → Ret vs v → ∃ k, v = .val (.word (BitVec.ofNat 64 k)) ∧ k ≤ F vs s) :
    WSpec σ X f Pre' F := by
  intro vs body callee rs hl s hs hloc r hr hg hP'
  obtain ⟨hgl, hmod, hret⟩ := hf vs body callee rs hl s hs hloc r hr hg (hP vs s hP')
  exact ⟨hgl, hmod.mono fun a ha => Or.inl (hR vs s a hP' ha),
    fun v hv => hRet vs s v hP' (hret v hv)⟩

/-- `rlp_encode_word(D, W)`: `wordLen W ≤ 9` bytes. -/
def WwPre (vs : List (ValueHOL 64)) (_ : State σ) : Prop :=
  ∃ D W : BitVec 64, vs = [.val (.word D), .val (.word W)] ∧ D.toNat + 9 ≤ scratchEnd

theorem wspec_rlp_encode_word (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    WSpec σ X (nm "rlp_encode_word") WwPre (fun _ _ => 9) := by
  refine wspec_of_footRet (footRet_rlp_encode_word hC hA) ?_ ?_ ?_
  · rintro vs s ⟨D, W, rfl, hD⟩
    exact ⟨D, rfl, fun W' hW' => by cases hW'; have := wordLen_le W.isLt; omega⟩
  · rintro vs s a ⟨D, W, rfl, hD⟩ ⟨D', W', hD', hW', hov⟩
    cases hD'
    cases hW'
    exact ⟨D, rfl, overlap_mono hov (by omega) (by have := wordLen_le W.isLt; omega)⟩
  · rintro vs s v ⟨D, W, rfl, hD⟩ hv
    exact ⟨_, hv W rfl, (wordLen_le W.isLt).2⟩

/-- `rlp_encode_bytes(D, S, N)`: at most `hdrLen N + N ≤ 9 + N` bytes. -/
def WbPre (vs : List (ValueHOL 64)) (_ : State σ) : Prop :=
  ∃ D S N : BitVec 64, vs = [.val (.word D), .val (.word S), .val (.word N)] ∧
    D.toNat + 9 + N.toNat ≤ scratchEnd

def WbF (vs : List (ValueHOL 64)) (_ : State σ) : Nat :=
  match argW vs 2 with
  | some N => 9 + N.toNat
  | none => 0

theorem wspec_rlp_encode_bytes (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    WSpec σ X (nm "rlp_encode_bytes") WbPre WbF := by
  refine wspec_of_footRet (footRet_rlp_encode_bytes hC hA) ?_ ?_ ?_
  · rintro vs s ⟨D, S, N, rfl, hD⟩
    exact ⟨D, N, rfl, rfl, by have := hdrLen_le N.isLt; omega⟩
  · rintro vs s a ⟨D, S, N, rfl, hD⟩ ⟨D', N', hD', hN', hov⟩
    cases hD'
    cases hN'
    exact ⟨D, rfl, overlap_mono hov (by omega) (by
      show D.toNat + (hdrLen N.toNat + N.toNat) ≤ D.toNat + (9 + N.toNat)
      have := hdrLen_le N.isLt; omega)⟩
  · rintro vs s v ⟨D, S, N, rfl, hD⟩ hv
    obtain ⟨k, rfl, -, hk, -⟩ := hv N rfl
    exact ⟨k, rfl, by show k ≤ 9 + N.toNat; have := hdrLen_le N.isLt; omega⟩

/-- `tx_put_to(D, T)`: at most `21` bytes. -/
def WtPre (vs : List (ValueHOL 64)) (_ : State σ) : Prop :=
  ∃ D T : BitVec 64, vs = [.val (.word D), .val (.word T)] ∧ D.toNat + 21 ≤ scratchEnd

theorem wspec_tx_put_to (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    WSpec σ X (nm "tx_put_to") WtPre (fun _ _ => 21) := by
  refine wspec_of_footRet (footRet_tx_put_to hC hA) ?_ ?_ ?_
  · rintro vs s ⟨D, T, rfl, hD⟩
    exact ⟨D, rfl, hD⟩
  · rintro vs s a ⟨D, T, rfl, hD⟩ ⟨D', hD', hov⟩
    cases hD'
    exact ⟨D, rfl, hov⟩
  · rintro vs s v ⟨D, T, rfl, hD⟩ hv
    refine ⟨_, hv T rfl, ?_⟩
    unfold toLen; split <;> omega

/-- `tx_put_blob_hashes(D, B, N)`: exactly `bhLen N` bytes (`≤ 9 + 33 N`). -/
def WhPre (vs : List (ValueHOL 64)) (_ : State σ) : Prop :=
  ∃ D Bf N : BitVec 64, vs = [.val (.word D), .val (.word Bf), .val (.word N)] ∧
    33 * N.toNat < 2 ^ 64 ∧ D.toNat + 9 + 33 * N.toNat ≤ scratchEnd

def WhF (vs : List (ValueHOL 64)) (_ : State σ) : Nat :=
  match argW vs 2 with
  | some N => 9 + 33 * N.toNat
  | none => 0

theorem wspec_tx_put_blob_hashes (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    WSpec σ X (nm "tx_put_blob_hashes") WhPre WhF := by
  refine wspec_of_footRet (footRet_tx_put_blob_hashes hC hA) ?_ ?_ ?_
  · rintro vs s ⟨D, Bf, N, rfl, h33, hD⟩
    exact ⟨D, N, rfl, rfl, h33, by
      unfold bhLen; have := hdrLen_le (n := 33 * N.toNat) h33; omega⟩
  · rintro vs s a ⟨D, Bf, N, rfl, h33, hD⟩ ⟨D', N', hD', hN', hov⟩
    cases hD'
    cases hN'
    exact ⟨D, rfl, overlap_mono hov (by omega) (by
      show D.toNat + bhLen N.toNat ≤ D.toNat + (9 + 33 * N.toNat)
      unfold bhLen; have := hdrLen_le (n := 33 * N.toNat) h33; omega)⟩
  · rintro vs s v ⟨D, Bf, N, rfl, h33, hD⟩ hv
    refine ⟨_, hv N rfl, ?_⟩
    show bhLen N.toNat ≤ 9 + 33 * N.toNat
    unfold bhLen; have := hdrLen_le (n := 33 * N.toNat) h33; omega

/-! ## The activation invariant with a fresh block -/

/-- Changing only cells outside `Γ` that were unallocated at entry keeps the invariant. -/
theorem heap_mod_out {a : Act σ} (ha : ActOK a X) {Γ : Gam} {q : Ptrs} {s : State σ}
    (hh : Heap a Γ q s) {mem : Mem} {R : BitVec 64 → Prop} (hmod : ModifiesOnly R s.memory mem)
    (hR : ∀ x, R x → ¬ InObj Γ x.toNat ∧ ¬ a.p0.Allocated x.toNat) :
    Heap a Γ q { s with memory := mem } := by
  obtain ⟨p1, -, hord, hL, -⟩ := hh.1
  refine heap_write ha hh hmod (fun x hx => Or.inl (hR x hx).1) ?_ ?_
  · intro o ho k hk hx
    exact absurd (cell_in hord hL ho hk) (hR _ hx).1
  · intro x hx
    exact Or.inr (Or.inr (Or.inl (hR x hx).2))

/-- The activation invariant with the fresh block `[B, B + n)`. -/
def BlkH (a : Act σ) (B : BitVec 64) (n : Nat) (t : State σ) : Prop :=
  ∃ Γ q, Ext a.Γ0 Γ ∧ Heap a Γ q t ∧ ∀ x : BitVec 64, Overlap B.toNat n x →
    ¬ InObj Γ x.toNat ∧ q.Allocated x.toNat ∧ ¬ a.p0.Allocated x.toNat

theorem blkH_congr {a : Act σ} (hH : HooksLawful a.C a.H) {B : BitVec 64} {n : Nat}
    {s t : State σ} (hm : t.memory = s.memory) (hg : t.globals = s.globals)
    (hd : t.memaddrs = s.memaddrs) (hb : t.be = s.be) (h : BlkH a B n s) : BlkH a B n t := by
  obtain ⟨Γ, q, he, hh, hblk⟩ := h
  exact ⟨Γ, q, he, heap_congr hH hm hg hd hb hh, hblk⟩

theorem hha_of_blkH {a : Act σ} {B : BitVec 64} {n : Nat} {t : State σ} (h : BlkH a B n t) :
    HHa a t := by
  obtain ⟨Γ, q, he, hh, -⟩ := h
  exact ⟨Γ, q, he, hh⟩

/-- A free-heap cell of the current state is outside `Γ` and unallocated at entry. -/
theorem freeHeap_out {a : Act σ} (ha : ActOK a X) {Γ : Gam} {q : Ptrs} {s : State σ}
    (hh : Heap a Γ q s) {x : BitVec 64} (hx : FreeHeap s x) :
    ¬ InObj Γ x.toNat ∧ ¬ a.p0.Allocated x.toNat := by
  obtain ⟨h, hg, h1, h2⟩ := hx
  obtain ⟨p1, hp1, hord, hL, -⟩ := hh.1
  have hp1' := hp1
  rw [hh.2.1] at hp1
  cases hp1
  have hhp : q.hp = h.toNat := by
    unfold ptrsOf at hp1'
    rw [hg] at hp1'
    split at hp1'
    · rename_i a1 b1 c1 ha1 hb1 hc1
      simp only [Option.some.injEq] at ha1 hp1'
      subst ha1
      rw [← hp1']
    · cases hp1'
  have hm := hh.2.2.1
  refine ⟨fun ⟨o, ho, h3, h4⟩ => ?_, fun hal => ?_⟩
  · have := live_alloc hord hL ho h3 h4
    unfold Ptrs.Allocated at this
    unfold Ptrs.Ordered at hord
    omega
  · unfold Ptrs.Allocated at hal
    unfold Ptrs.Mono at hm
    have := ha.hord0
    unfold Ptrs.Ordered at this hord
    omega


/-! ## The cursor step -/

/-- The cursor: `p = B + 10 + u` with `u ≤ U`, a word `w`, the other locals `Lf`, the block. -/
def Cur (a : Act σ) (B : BitVec 64) (n : Nat) (Lf : LocalsH → Prop) (U : Nat) (t : State σ) :
    Prop :=
  Lf t.locals ∧ (∃ u, u ≤ U ∧
      t.locals.lookup (nm "p") = some (.val (.word (B + BitVec.ofNat 64 (10 + u))))) ∧
    (∃ W : BitVec 64, t.locals.lookup (nm "w") = some (.val (.word W))) ∧ BlkH a B n t

/-- `Lf` ignores `p` and `w`. -/
def LfOK (Lf : LocalsH → Prop) : Prop :=
  ∀ m m' : LocalsH, (∀ y, y ≠ nm "p" → y ≠ nm "w" → m'.lookup y = m.lookup y) → Lf m → Lf m'

/-- The statement post with the cursor. -/
def CurQ (a : Act σ) (B : BitVec 64) (n : Nat) (Lf : LocalsH → Prop) (U : Nat)
    (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  (r = none → Cur a B n Lf U t) ∧ ∀ r', r = some r' → Abn r' ∧ (¬ Abortive r' → HHa a t)

/-- `p = p + w;` -/
def teP' : ProgHOL 64 := .assign .local (nm "p") (.op .add [lv (nm "p"), lv (nm "w")])

def wstep (f : MlS) (args : List (ExpHOL 64)) : ProgHOL 64 :=
  .seq (.call (some (some (.local, nm "w"), none)) f (lv (nm "p") :: args)) teP'

/-- After the call of a cursor step: `w = k ≤ m`, `p` unchanged. -/
def WMid (a : Act σ) (B : BitVec 64) (n : Nat) (Lf : LocalsH → Prop) (U m : Nat) (t : State σ) :
    Prop :=
  Lf t.locals ∧ BlkH a B n t ∧ ∃ u k, u ≤ U ∧ k ≤ m ∧
    t.locals.lookup (nm "p") = some (.val (.word (B + BitVec.ofNat 64 (10 + u)))) ∧
    t.locals.lookup (nm "w") = some (.val (.word (BitVec.ofNat 64 k)))

/-- The abnormal part of the statement posts. -/
def AbnQ (a : Act σ) (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  ∀ r', r = some r' → Abn r' ∧ (¬ Abortive r' → HHa a t)

/-- **The call of a cursor step**: `w = f(p, args);`. -/
theorem hoareG_wcall {a : Act σ} (ha : ActOK a X) {f : MlS} {Pre : List (ValueHOL 64) → State σ → Prop}
    {F : List (ValueHOL 64) → State σ → Nat} (hf : WSpec σ X f Pre F) {args : List (ExpHOL 64)}
    {B : BitVec 64} {n : Nat} {Lf : LocalsH → Prop} (hLf : LfOK Lf) {U m : Nat}
    (hroom : 10 + U + m ≤ n) (hBn : B.toNat + n < 2 ^ 64)
    (hpre : ∀ s : State σ, InCtx s X → Cur a B n Lf U s → ∀ (u : Nat), u ≤ U →
      s.locals.lookup (nm "p") = some (.val (.word (B + BitVec.ofNat 64 (10 + u)))) →
      ∀ vs, evs s (lv (nm "p") :: args) = some vs → ∀ callee,
        argW vs 0 = some (B + BitVec.ofNat 64 (10 + u)) ∧
        Pre vs (callEntryStateHOLFinite s callee) ∧ F vs (callEntryStateHOLFinite s callee) ≤ m) :
    HoareG σ X (Cur a B n Lf U) (.call (some (some (.local, nm "w"), none)) f (lv (nm "p") :: args))
      (fun r t => (r = none → WMid a B n Lf U m t) ∧ AbnQ a r t) := by
  have hf' := FunSpec.and hf (funSpec_dom (σ := σ) (X := X) f)
  refine hoareG_callA hf' ?_ ?_
  · intro s hs hc vs hvs callee v st ⟨hR, hdm, hdb⟩ _ _
    have hc' := hc
    obtain ⟨hL, ⟨u, hu, hp⟩, -, Γ, q, he, hh, hblk⟩ := hc
    obtain ⟨hA0, hP, hF⟩ := hpre s hs hc' u hu hp vs hvs callee
    obtain ⟨hgl, hmod, hret⟩ := hR (by simp [Good]) hP
    obtain ⟨k, rfl, hk⟩ := hret v rfl
    have hR' : ∀ x, ((∃ D : BitVec 64, argW vs 0 = some D ∧
          Overlap D.toNat (F vs (callEntryStateHOLFinite s callee)) x) ∨
        FreeHeap (callEntryStateHOLFinite s callee) x) →
        ¬ InObj Γ x.toNat ∧ ¬ a.p0.Allocated x.toNat := by
      rintro x (⟨D, hD, hov⟩ | hfh)
      · rw [hA0] at hD
        cases hD
        have hP' : (B + BitVec.ofNat 64 (10 + u)).toNat = B.toNat + (10 + u) := toNat_addc (by omega)
        rw [hP'] at hov
        have hov' : Overlap B.toNat n x := overlap_mono hov (by omega) (by omega)
        exact ⟨(hblk x hov').1, (hblk x hov').2.2⟩
      · exact freeHeap_out ha hh hfh
    have hh1 : Heap a Γ q { s with memory := st.memory } := heap_mod_out ha hh hmod hR'
    have hh2 : Heap a Γ q (setKvarHOLFinite .local (nm "w") (.val (.word (BitVec.ofNat 64 k)))
        { st with locals := s.locals }) :=
      heap_congr (s := { s with memory := st.memory }) ha.hH rfl hgl hdm hdb hh1
    refine ⟨fun _ => ⟨hLf _ _ (fun y h1 h2 => lookup_update_ne _ _ (Ne.symm h2)) hL,
      ⟨Γ, q, he, hh2, hblk⟩, u, k, hu, by omega, ?_, lookup_update_self _ _ _⟩,
      fun r' h => nomatch h⟩
    show (s.locals.update (nm "w", _)).lookup (nm "p") = _
    rw [lookup_update_ne _ _ (by decide)]
    exact hp
  · intro s hs hc vs hvs callee r st ⟨hR, hdm, hdb⟩ _ habn
    refine ⟨fun h => absurd h (by simp), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨habn, fun hna => ?_⟩
    have hc' := hc
    obtain ⟨hL, ⟨u, hu, hp⟩, -, Γ, q, he, hh, hblk⟩ := hc
    obtain ⟨hA0, hP, hF⟩ := hpre s hs hc' u hu hp vs hvs callee
    obtain ⟨hgl, hmod, -⟩ := hR (abn_good habn) hP
    have hR' : ∀ x, ((∃ D : BitVec 64, argW vs 0 = some D ∧
          Overlap D.toNat (F vs (callEntryStateHOLFinite s callee)) x) ∨
        FreeHeap (callEntryStateHOLFinite s callee) x) →
        ¬ InObj Γ x.toNat ∧ ¬ a.p0.Allocated x.toNat := by
      rintro x (⟨D, hD, hov⟩ | hfh)
      · rw [hA0] at hD
        cases hD
        have hP' : (B + BitVec.ofNat 64 (10 + u)).toNat = B.toNat + (10 + u) := toNat_addc (by omega)
        rw [hP'] at hov
        have hov' : Overlap B.toNat n x := overlap_mono hov (by omega) (by omega)
        exact ⟨(hblk x hov').1, (hblk x hov').2.2⟩
      · exact freeHeap_out ha hh hfh
    have hh1 : Heap a Γ q { s with memory := st.memory } := heap_mod_out ha hh hmod hR'
    exact ⟨Γ, q, he, heap_congr (s := { s with memory := st.memory }) ha.hH rfl hgl hdm hdb hh1⟩

/-- **The advance of a cursor step**: `p = p + w;`. -/
theorem hoareG_wadv {a : Act σ} (ha : ActOK a X) {B : BitVec 64} {n : Nat} {Lf : LocalsH → Prop}
    (hLf : LfOK Lf) {U m : Nat} :
    HoareG σ X (WMid a B n Lf U m) teP' (CurQ a B n Lf (U + m)) := by
  refine hoareG_assign fun t _ hR0 v hv _ => ?_
  obtain ⟨hL, hb, u, k, hu, hk, hp, hw⟩ := hR0
  rw [ev_add2 (ev_lw hp) (ev_lw hw)] at hv
  cases hv
  refine ⟨fun _ => ⟨hLf _ _ (fun y h1 _ => lk_set_ne _ _ (Ne.symm h1)) hL,
    ⟨u + k, by omega, ?_⟩, ⟨BitVec.ofNat 64 k, by rw [lk_set_ne _ _ (by decide)]; exact hw⟩,
    blkH_congr (s := t) ha.hH rfl rfl rfl rfl hb⟩, fun r' h => nomatch h⟩
  rw [lk_set_self]
  congr 3
  rw [BitVec.add_assoc]
  congr 1
  apply BitVec.eq_of_toNat_eq
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, BitVec.toNat_ofNat, BitVec.toNat_ofNat]
  omega

/-- **The cursor step** `w = f(p, args); p = p + w`. -/
theorem hoareG_wstep {a : Act σ} (ha : ActOK a X) {f : MlS} {Pre : List (ValueHOL 64) → State σ → Prop}
    {F : List (ValueHOL 64) → State σ → Nat} (hf : WSpec σ X f Pre F) {args : List (ExpHOL 64)}
    {B : BitVec 64} {n : Nat} {Lf : LocalsH → Prop} (hLf : LfOK Lf) {U m : Nat}
    (hroom : 10 + U + m ≤ n) (hBn : B.toNat + n < 2 ^ 64)
    (hpre : ∀ s : State σ, InCtx s X → Cur a B n Lf U s → ∀ (u : Nat), u ≤ U →
      s.locals.lookup (nm "p") = some (.val (.word (B + BitVec.ofNat 64 (10 + u)))) →
      ∀ vs, evs s (lv (nm "p") :: args) = some vs → ∀ callee,
        argW vs 0 = some (B + BitVec.ofNat 64 (10 + u)) ∧
        Pre vs (callEntryStateHOLFinite s callee) ∧ F vs (callEntryStateHOLFinite s callee) ≤ m) :
    HoareG σ X (Cur a B n Lf U) (wstep f args) (CurQ a B n Lf (U + m)) :=
  hoareG_seq (hoareG_wcall ha hf hLf hroom hBn hpre)
    (fun r t _ hr _ h => ⟨fun h' => absurd h' hr, h.2⟩)
    (hoareG_pre (hoareG_wadv ha hLf) fun _ _ h => h.1 rfl)

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.wspec_tx_put_blob_hashes
#print axioms InitECandidate.Solver.MemSafe.Rec.freeHeap_out
#print axioms InitECandidate.Solver.MemSafe.Rec.hoareG_wstep
