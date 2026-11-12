import InitECandidate.Solver.MemSafe.Hooks.RecTx

/-!
# The witness-state record entry `wsD` (witg)

The witness-state struct (`state_init`, `WS_SIZE` = 40 bytes, global `ws`) is a `Γ` object `o` of
the record type `tWSR` (= 52, `Hooks/RecIds.lean`; slots 0 `WS_NODEDB` and 2 `WS_CODEDB` `prot`).
Its invariant **`WsRW`** says that the node DB `rd (o + 0)` and the code DB `rd (o + 16)` are
well-formed **frozen** node databases (**`NdbR`**): an htab whose cells (the three header cells
`KEYLEN` / `NODES` / `ROOT`, and the `KIND` / `LEFT` / `RIGHT` cells of every node reachable from
the root) are `prot` slots of heap record objects of `Γ` (`RCell`), and whose leaf values are
**slice records** (`SlRec`): two `prot` cells `w`, `w + 8` of one heap record object `x`
describing a slice `[rd w, rd w + rd (w + 8))` with `heapBase ≤ rd w` and end `≤ x.hi`.

Why the node DB's own objects are record objects and not a `Γ` `tHTh32` table: the table hook
does not constrain leaf values (`valK tHTh32 = scalar`), and a table's cells can be in no other
object's footprint (`HtabHooks.sep`), so a `Γ` table's leaves are unprotected
(`research/notes/witg-design.md` §0).

Footprint (`wsFp`): slots 0 and 2 and both node DBs' cells (`NdbFp`, defined by reachability
`Rch`). Dependencies (`wsRef`): the `Γ` objects holding a footprint cell.
-/

namespace InitECandidate.Solver.MemSafe.Hooks
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.Spec

/-! ## Value slices -/

/-- `Band4.VIn` at the hooks level: the slice is empty or lies inside a `tV` (`tVAL`) object of `Γ`. -/
def VInR (tV : Nat) (Γ : Gam) (vp vl : BitVec 64) : Prop :=
  vl = 0 ∨ ∃ x ∈ Γ, x.ty = tV ∧ x.lo ≤ vp.toNat ∧ vp.toNat + vl.toNat ≤ x.hi

theorem vInR_ext {tV : Nat} {Γ Γ' : Gam} (he : Ext Γ Γ') {vp vl : BitVec 64} (h : VInR tV Γ vp vl) :
    VInR tV Γ' vp vl := by
  rcases h with h | ⟨x, hx, ht, h1, h2⟩
  · exact Or.inl h
  · obtain ⟨x', hx', hb, ht', hs⟩ := he x hx
    refine Or.inr ⟨x', hx', ht'.trans ht, ?_, ?_⟩
    · unfold Obj.lo at h1 ⊢; rw [hb]; exact h1
    · unfold Obj.hi at h2 ⊢; rw [hb]; omega

/-! ## Record cells and slice records -/

/-- The node types: a node DB never refers to a node object (stage 2b: the node value slots are
written by hook-aware stores, which needs every other footprint to avoid them). -/
def NotNodeTy (t : Nat) : Prop := t ≠ tNLEAF ∧ t ≠ tNEXT ∧ t ≠ tNBRANCH

/-- **A record cell**: slot `k` of a heap record object of `Γ`, `prot`, below `heapEnd`. -/
def RCell (Γ : Gam) (a : BitVec 64) : Prop :=
  ∃ x ∈ Γ, RecTyOK x.ty ∧ (guestC.ty x.ty).region = .heap ∧ ∃ k, x.HasSlot k ∧
    (guestC.ty x.ty).slot k = .prot ∧ a = x.cell k ∧ x.lo + 8 * k + 8 ≤ heapEnd ∧ NotNodeTy x.ty

/-- **A slice record** at `w`: slots `k`, `k + 1` of one heap record object `x` of `Γ` (both
`prot`), describing a slice that starts in the heap and ends below `x.hi`, and that lies inside a
`tVAL` object of `Γ` (stage 2b: the slice is a sub-slice of the adopted input blob). -/
def SlRec (Γ : Gam) (m : Mem) (w : BitVec 64) : Prop :=
  (∃ x ∈ Γ, RecTyOK x.ty ∧ (guestC.ty x.ty).region = .heap ∧ ∃ k, x.HasSlot (k + 1) ∧
    (guestC.ty x.ty).slot k = .prot ∧ (guestC.ty x.ty).slot (k + 1) = .prot ∧ w = x.cell k ∧
    x.lo + 8 * k + 16 ≤ heapEnd ∧ heapBase ≤ (rd m w).toNat ∧
    (rd m w).toNat + (rd m (w + BitVec.ofNat 64 8)).toNat ≤ x.hi ∧ NotNodeTy x.ty) ∧
  VInR tVAL Γ (rd m w) (rd m (w + BitVec.ofNat 64 8))

/-- The `tVAL` object a nonempty slice record's slice lies in. -/
def SlRef (Γ : Gam) (m : Mem) (w : BitVec 64) (x : Obj) : Prop :=
  x.ty = tVAL ∧ rd m (w + BitVec.ofNat 64 8) ≠ 0 ∧ x.lo ≤ (rd m w).toNat ∧
    (rd m w).toNat + (rd m (w + BitVec.ofNat 64 8)).toNat ≤ x.hi

theorem cell_succ (x : Obj) (k : Nat) : x.cell (k + 1) = x.cell k + BitVec.ofNat 64 8 := by
  unfold Obj.cell
  rw [BitVec.add_assoc]
  congr 1
  apply BitVec.eq_of_toNat_eq
  simp only [BitVec.toNat_add, BitVec.toNat_ofNat]
  omega

/-- The object facts of a record cell (the `RecD.cells` shape). -/
theorem rcell_obj {Γ : Gam} {a : BitVec 64} (h : RCell Γ a) :
    ∃ x ∈ Γ, RecTyOK x.ty ∧ ∃ k, x.HasSlot k ∧ (guestC.ty x.ty).slot k = .prot ∧ a = x.cell k ∧
      x.lo ≤ a.toNat ∧ a.toNat < x.hi := by
  obtain ⟨x, hx, hxt, -, k, hks, hpr, rfl, hb⟩ := h
  have e := cellN (x := x) (k := k) (by have := heapEnd_lt; omega)
  refine ⟨x, hx, hxt, k, hks, hpr, rfl, by omega, ?_⟩
  rw [e]; unfold Obj.hi; unfold Obj.HasSlot at hks; unfold Obj.lo; unfold Obj.lo at e; omega

/-- A record cell as a byte position inside its object. -/
theorem rcell_in {Γ : Gam} {a : BitVec 64} (h : RCell Γ a) :
    ∃ x ∈ Γ, (guestC.ty x.ty).region = .heap ∧ x.lo ≤ a.toNat ∧ a.toNat + 8 ≤ x.hi := by
  obtain ⟨x, hx, -, hreg, k, hks, -, rfl, hb⟩ := h
  have e := cellN (x := x) (k := k) (by have := heapEnd_lt; omega)
  refine ⟨x, hx, hreg, by rw [e]; omega, ?_⟩
  rw [e]; unfold Obj.hi; unfold Obj.HasSlot at hks; unfold Obj.lo; unfold Obj.lo at e; omega

/-- A slice record's two cells are record cells. -/
theorem slRec_cells {Γ : Gam} {m : Mem} {w : BitVec 64} (h : SlRec Γ m w) :
    RCell Γ w ∧ RCell Γ (w + BitVec.ofNat 64 8) := by
  obtain ⟨⟨x, hx, hxt, hreg, k, hks, hp0, hp1, rfl, hb, -, -, hnn⟩, -⟩ := h
  refine ⟨⟨x, hx, hxt, hreg, k, by unfold Obj.HasSlot at *; omega, hp0, rfl, by omega, hnn⟩,
    ⟨x, hx, hxt, hreg, k + 1, hks, hp1, (cell_succ x k).symm, by omega, hnn⟩⟩

theorem rcell_ext {Γ Γ' : Gam} (hx : Ext Γ Γ') {a : BitVec 64} (h : RCell Γ a) : RCell Γ' a := by
  obtain ⟨x, hxΓ, hxt, hreg, k, hks, hpr, rfl, hb, hnn⟩ := h
  obtain ⟨x', hx', hb', ht', hs'⟩ := hx x hxΓ
  have hc : x'.cell k = x.cell k := by unfold Obj.cell; rw [hb']
  have hlo : x'.lo = x.lo := by unfold Obj.lo; rw [hb']
  refine ⟨x', hx', by rw [ht']; exact hxt, by rw [ht']; exact hreg, k,
    by unfold Obj.HasSlot at *; omega, by rw [ht']; exact hpr, hc.symm, by rw [hlo]; exact hb,
    by rw [ht']; exact hnn⟩

theorem slRec_ext {Γ Γ' : Gam} (hx : Ext Γ Γ') {m : Mem} {w : BitVec 64} (h : SlRec Γ m w) :
    SlRec Γ' m w := by
  obtain ⟨⟨x, hxΓ, hxt, hreg, k, hks, hp0, hp1, rfl, hb, h1, h2, hnn⟩, hv⟩ := h
  obtain ⟨x', hx', hb', ht', hs'⟩ := hx x hxΓ
  have hc : x'.cell k = x.cell k := by unfold Obj.cell; rw [hb']
  have hlo : x'.lo = x.lo := by unfold Obj.lo; rw [hb']
  have hhi : x.hi ≤ x'.hi := by unfold Obj.hi; rw [hb']; omega
  exact ⟨⟨x', hx', by rw [ht']; exact hxt, by rw [ht']; exact hreg, k,
    by unfold Obj.HasSlot at *; omega, by rw [ht']; exact hp0, by rw [ht']; exact hp1, hc.symm,
    by rw [hlo]; exact hb, h1, by omega, by rw [ht']; exact hnn⟩, vInR_ext hx hv⟩

theorem rcell_shrink {Γ Γs : Gam} {a : BitVec 64} (h : RCell Γ a)
    (hc : ∀ x ∈ Γ, x.lo ≤ a.toNat → a.toNat < x.hi → x ∈ Γs) : RCell Γs a := by
  have hin := rcell_obj h
  obtain ⟨x, hx, hxt, hreg, k, hks, hpr, rfl, hb⟩ := h
  obtain ⟨y, hy, -, k', -, -, hyk, h1, h2⟩ := hin
  have hxin : x.lo ≤ (x.cell k).toNat ∧ (x.cell k).toNat < x.hi := by
    have e := cellN (x := x) (k := k) (by have := heapEnd_lt; omega)
    rw [e]; unfold Obj.hi Obj.lo; unfold Obj.HasSlot at hks; unfold Obj.lo at e; omega
  exact ⟨x, hc x hx hxin.1 hxin.2, hxt, hreg, k, hks, hpr, rfl, hb⟩

theorem slRec_shrink {Γ Γs : Gam} {m : Mem} {w : BitVec 64} (h : SlRec Γ m w)
    (hc : ∀ x ∈ Γ, x.lo ≤ w.toNat → w.toNat < x.hi → x ∈ Γs)
    (hv : ∀ x ∈ Γ, SlRef Γ m w x → x ∈ Γs) : SlRec Γs m w := by
  obtain ⟨⟨x, hx, hxt, hreg, k, hks, hp0, hp1, rfl, hb, h1, h2, hnn⟩, hV⟩ := h
  have hxin : x.lo ≤ (x.cell k).toNat ∧ (x.cell k).toNat < x.hi := by
    have e := cellN (x := x) (k := k) (by have := heapEnd_lt; omega)
    rw [e]; unfold Obj.hi Obj.lo; unfold Obj.HasSlot at hks; unfold Obj.lo at e; omega
  refine ⟨⟨x, hc x hx hxin.1 hxin.2, hxt, hreg, k, hks, hp0, hp1, rfl, hb, h1, h2, hnn⟩, ?_⟩
  rcases hV with h0 | ⟨y, hy, hyt, hy1, hy2⟩
  · exact Or.inl h0
  · by_cases h00 : rd m ((x.cell k) + BitVec.ofNat 64 8) = 0
    · exact Or.inl h00
    · exact Or.inr ⟨y, hv y hy ⟨hyt, h00, hy1, hy2⟩, hyt, hy1, hy2⟩

theorem slRec_congr {Γ : Gam} {m m' : Mem} {w : BitVec 64} (h : SlRec Γ m w)
    (h0 : m' w = m w) (h8 : m' (w + BitVec.ofNat 64 8) = m (w + BitVec.ofNat 64 8)) :
    SlRec Γ m' w := by
  obtain ⟨⟨x, hx, hxt, hreg, k, hks, hp0, hp1, hw, hb, e1, e2, hnn⟩, hV⟩ := h
  refine ⟨⟨x, hx, hxt, hreg, k, hks, hp0, hp1, hw, hb, ?_, ?_, hnn⟩, ?_⟩
  · rw [rd_congr h0]; exact e1
  · rw [rd_congr h0, rd_congr h8]; exact e2
  · rw [rd_congr h0, rd_congr h8]; exact hV

/-! ## The frozen node DB -/

/-- The cell address of field `off` of node `n` (`Leaves.nodeA`). -/
def ndA (m : Mem) (T n : BitVec 64) (off : Nat) : BitVec 64 :=
  Inv.hdr m T 40 + n * BitVec.ofNat 64 32 + BitVec.ofNat 64 off

/-- The nodes reachable from the root through internal nodes. -/
inductive Rch (m : Mem) (T : BitVec 64) : BitVec 64 → Prop
  | root : Rch m T (Inv.hdr m T 56)
  | left {n : BitVec 64} : Rch m T n → n ≠ 0 → Inv.KIND m T n ≠ Inv.KB m T →
      Rch m T (Inv.LEFT m T n)
  | right {n : BitVec 64} : Rch m T n → n ≠ 0 → Inv.KIND m T n ≠ Inv.KB m T →
      Rch m T (Inv.RIGHT m T n)

/-- **The frozen node-DB invariant**: every cell `nodedb_lookup` reads is a record cell, and the
leaf values are slice records. -/
def NdbR (Γ : Gam) (m : Mem) (T : BitVec 64) : Prop :=
  RCell Γ (T + BitVec.ofNat 64 0) ∧ RCell Γ (T + BitVec.ofNat 64 40) ∧
    RCell Γ (T + BitVec.ofNat 64 56) ∧
    ∀ n, Rch m T n → n ≠ 0 → RCell Γ (ndA m T n 24) ∧ RCell Γ (ndA m T n 8) ∧
      (Inv.KIND m T n = Inv.KB m T → SlRec Γ m (Inv.LEFT m T n)) ∧
      (Inv.KIND m T n ≠ Inv.KB m T → RCell Γ (ndA m T n 16))

/-- The cells `NdbR` reads. -/
def NdbFp (m : Mem) (T a : BitVec 64) : Prop :=
  a = T + BitVec.ofNat 64 0 ∨ a = T + BitVec.ofNat 64 40 ∨ a = T + BitVec.ofNat 64 56 ∨
    ∃ n, Rch m T n ∧ n ≠ 0 ∧ (a = ndA m T n 24 ∨ a = ndA m T n 8 ∨
      (Inv.KIND m T n ≠ Inv.KB m T ∧ a = ndA m T n 16) ∨
      (Inv.KIND m T n = Inv.KB m T ∧
        (a = Inv.LEFT m T n ∨ a = Inv.LEFT m T n + BitVec.ofNat 64 8)))

theorem ird_congr {m m' : Mem} {a : BitVec 64} (h : m' a = m a) : Inv.rd m' a = Inv.rd m a := by
  unfold Inv.rd; rw [h]

/-- Every footprint cell of a frozen node DB is a record cell. -/
theorem ndbFp_rcell {Γ : Gam} {m : Mem} {T a : BitVec 64} (hw : NdbR Γ m T) (hf : NdbFp m T a) :
    RCell Γ a := by
  obtain ⟨h0, h40, h56, hS⟩ := hw
  rcases hf with rfl | rfl | rfl | ⟨n, hr, hn0, hc⟩
  · exact h0
  · exact h40
  · exact h56
  obtain ⟨k24, k8, hleaf, hint⟩ := hS n hr hn0
  rcases hc with rfl | rfl | ⟨hk, rfl⟩ | ⟨hk, rfl | rfl⟩
  · exact k24
  · exact k8
  · exact hint hk
  · exact (slRec_cells (hleaf hk)).1
  · exact (slRec_cells (hleaf hk)).2

/-- **Frame**: a frozen node DB and its footprint depend only on the footprint. -/
theorem ndb_frame {Γ : Gam} {m m' : Mem} {T : BitVec 64} (hw : NdbR Γ m T)
    (hfp : ∀ a, NdbFp m T a → m' a = m a) : NdbR Γ m' T ∧ NdbFp m' T = NdbFp m T := by
  have e0 : Inv.hdr m' T 0 = Inv.hdr m T 0 := ird_congr (hfp _ (Or.inl rfl))
  have e40 : Inv.hdr m' T 40 = Inv.hdr m T 40 := ird_congr (hfp _ (Or.inr (Or.inl rfl)))
  have e56 : Inv.hdr m' T 56 = Inv.hdr m T 56 := ird_congr (hfp _ (Or.inr (Or.inr (Or.inl rfl))))
  have eKB : Inv.KB m' T = Inv.KB m T := by unfold Inv.KB; rw [e0]
  have eA : ∀ n off, ndA m' T n off = ndA m T n off := by intro n off; unfold ndA; rw [e40]
  have eK : ∀ n, Rch m T n → n ≠ 0 → Inv.KIND m' T n = Inv.KIND m T n := by
    intro n hr hn0
    show Inv.rd m' (ndA m' T n 24) = Inv.rd m (ndA m T n 24)
    rw [eA]
    exact ird_congr (hfp _ (Or.inr (Or.inr (Or.inr ⟨n, hr, hn0, Or.inl rfl⟩))))
  have eL : ∀ n, Rch m T n → n ≠ 0 → Inv.LEFT m' T n = Inv.LEFT m T n := by
    intro n hr hn0
    show Inv.rd m' (ndA m' T n 8) = Inv.rd m (ndA m T n 8)
    rw [eA]
    exact ird_congr (hfp _ (Or.inr (Or.inr (Or.inr ⟨n, hr, hn0, Or.inr (Or.inl rfl)⟩))))
  have eR : ∀ n, Rch m T n → n ≠ 0 → Inv.KIND m T n ≠ Inv.KB m T →
      Inv.RIGHT m' T n = Inv.RIGHT m T n := by
    intro n hr hn0 hk
    show Inv.rd m' (ndA m' T n 16) = Inv.rd m (ndA m T n 16)
    rw [eA]
    exact ird_congr (hfp _ (Or.inr (Or.inr (Or.inr ⟨n, hr, hn0, Or.inr (Or.inr (Or.inl ⟨hk, rfl⟩))⟩))))
  have fwd : ∀ n, Rch m T n → Rch m' T n := by
    intro n hr
    induction hr with
    | root => have h := Rch.root (m := m') (T := T); rw [e56] at h; exact h
    | @left n hr hn0 hk ih =>
      have h := Rch.left ih hn0 (by rw [eK n hr hn0, eKB]; exact hk)
      rw [eL n hr hn0] at h; exact h
    | @right n hr hn0 hk ih =>
      have h := Rch.right ih hn0 (by rw [eK n hr hn0, eKB]; exact hk)
      rw [eR n hr hn0 hk] at h; exact h
  have bwd : ∀ n, Rch m' T n → Rch m T n := by
    intro n hr
    induction hr with
    | root => rw [e56]; exact Rch.root
    | @left n _ hn0 hk ih =>
      rw [eK n ih hn0, eKB] at hk
      rw [eL n ih hn0]; exact Rch.left ih hn0 hk
    | @right n _ hn0 hk ih =>
      rw [eK n ih hn0, eKB] at hk
      rw [eR n ih hn0 hk]; exact Rch.right ih hn0 hk
  obtain ⟨h0, h40, h56, hS⟩ := hw
  refine ⟨⟨h0, h40, h56, fun n hr hn0 => ?_⟩, ?_⟩
  · have hr' := bwd n hr
    obtain ⟨k24, k8, hleaf, hint⟩ := hS n hr' hn0
    refine ⟨by rw [eA]; exact k24, by rw [eA]; exact k8, fun hk => ?_, fun hk => ?_⟩
    · rw [eK n hr' hn0, eKB] at hk
      rw [eL n hr' hn0]
      exact slRec_congr (hleaf hk)
        (hfp _ (Or.inr (Or.inr (Or.inr ⟨n, hr', hn0, Or.inr (Or.inr (Or.inr ⟨hk, Or.inl rfl⟩))⟩))))
        (hfp _ (Or.inr (Or.inr (Or.inr ⟨n, hr', hn0, Or.inr (Or.inr (Or.inr ⟨hk, Or.inr rfl⟩))⟩))))
    · rw [eK n hr' hn0, eKB] at hk
      rw [eA]; exact hint hk
  · funext a
    apply propext
    constructor
    · rintro (h | h | h | ⟨n, hr, hn0, hc⟩)
      · exact Or.inl h
      · exact Or.inr (Or.inl h)
      · exact Or.inr (Or.inr (Or.inl h))
      · have hr' := bwd n hr
        refine Or.inr (Or.inr (Or.inr ⟨n, hr', hn0, ?_⟩))
        simp only [eA, eK n hr' hn0, eKB, eL n hr' hn0] at hc
        exact hc
    · rintro (h | h | h | ⟨n, hr, hn0, hc⟩)
      · exact Or.inl h
      · exact Or.inr (Or.inl h)
      · exact Or.inr (Or.inr (Or.inl h))
      · refine Or.inr (Or.inr (Or.inr ⟨n, fwd n hr, hn0, ?_⟩))
        simp only [eA, eK n hr hn0, eKB, eL n hr hn0]
        exact hc

theorem ndbR_ext {Γ Γ' : Gam} (hx : Ext Γ Γ') {m : Mem} {T : BitVec 64} (h : NdbR Γ m T) :
    NdbR Γ' m T := by
  obtain ⟨h0, h40, h56, hS⟩ := h
  refine ⟨rcell_ext hx h0, rcell_ext hx h40, rcell_ext hx h56, fun n hr hn0 => ?_⟩
  obtain ⟨k24, k8, hleaf, hint⟩ := hS n hr hn0
  exact ⟨rcell_ext hx k24, rcell_ext hx k8, fun hk => slRec_ext hx (hleaf hk),
    fun hk => rcell_ext hx (hint hk)⟩

/-- The `tVAL` objects the leaf slices of a node DB lie in. -/
def NdbSlRef (Γ : Gam) (m : Mem) (T b : BitVec 64) : Prop :=
  ∃ n, Rch m T n ∧ n ≠ 0 ∧ Inv.KIND m T n = Inv.KB m T ∧
    ∃ x ∈ Γ, x.base = b ∧ SlRef Γ m (Inv.LEFT m T n) x

theorem ndbR_shrink {Γ Γs : Gam} {m : Mem} {T : BitVec 64} (h : NdbR Γ m T)
    (hc : ∀ a, NdbFp m T a → ∀ x ∈ Γ, x.lo ≤ a.toNat → a.toNat < x.hi → x ∈ Γs)
    (hv : ∀ x ∈ Γ, NdbSlRef Γ m T x.base → x ∈ Γs) :
    NdbR Γs m T := by
  obtain ⟨h0, h40, h56, hS⟩ := h
  refine ⟨rcell_shrink h0 (hc _ (Or.inl rfl)), rcell_shrink h40 (hc _ (Or.inr (Or.inl rfl))),
    rcell_shrink h56 (hc _ (Or.inr (Or.inr (Or.inl rfl)))), fun n hr hn0 => ?_⟩
  obtain ⟨k24, k8, hleaf, hint⟩ := hS n hr hn0
  refine ⟨rcell_shrink k24 (hc _ (Or.inr (Or.inr (Or.inr ⟨n, hr, hn0, Or.inl rfl⟩)))),
    rcell_shrink k8 (hc _ (Or.inr (Or.inr (Or.inr ⟨n, hr, hn0, Or.inr (Or.inl rfl)⟩)))),
    fun hk => slRec_shrink (hleaf hk)
      (hc _ (Or.inr (Or.inr (Or.inr ⟨n, hr, hn0, Or.inr (Or.inr (Or.inr ⟨hk, Or.inl rfl⟩))⟩))))
      (fun x hx hsl => hv x hx ⟨n, hr, hn0, hk, x, hx, rfl, hsl⟩),
    fun hk => rcell_shrink (hint hk)
      (hc _ (Or.inr (Or.inr (Or.inr ⟨n, hr, hn0, Or.inr (Or.inr (Or.inl ⟨hk, rfl⟩))⟩))))⟩

/-! ## The witness-state record -/

/-- **The witness-state record invariant**: the node DB (slot 0) and the code DB (slot 2) are
frozen node DBs. -/
def WsRW (Γ : Gam) (m : Mem) (o : Obj) : Prop :=
  40 ≤ o.size ∧ o.lo + 40 ≤ heapEnd ∧ NdbR Γ m (txF m o 0) ∧ NdbR Γ m (txF m o 2)

def wsFp (_Γ : Gam) (m : Mem) (o : Obj) (a : BitVec 64) : Prop :=
  a = o.cell 0 ∨ a = o.cell 2 ∨ NdbFp m (txF m o 0) a ∨ NdbFp m (txF m o 2) a

/-- The objects holding a node-DB cell. -/
def wsRef (Γ : Gam) (m : Mem) (o : Obj) (b : BitVec 64) : Prop :=
  (∃ a, (NdbFp m (txF m o 0) a ∨ NdbFp m (txF m o 2) a) ∧
    ∃ x ∈ Γ, x.base = b ∧ x.lo ≤ a.toNat ∧ a.toNat < x.hi) ∨
  NdbSlRef Γ m (txF m o 0) b ∨ NdbSlRef Γ m (txF m o 2) b

theorem recTy_tWSR : RecTyOK tWSR := by decide

theorem ws_cells (Γ : Gam) (m : Mem) (o : Obj) (a : BitVec 64) (_hG : GamOK Γ) (ho : o ∈ Γ)
    (ht : o.ty = tWSR) (hw : WsRW Γ m o) (hf : wsFp Γ m o a) :
    ∃ x ∈ Γ, RecTyOK x.ty ∧ ∃ k, x.HasSlot k ∧ (guestC.ty x.ty).slot k = .prot ∧ a = x.cell k ∧
      x.lo ≤ a.toNat ∧ a.toNat < x.hi := by
  obtain ⟨hs, hlo, hN, hC⟩ := hw
  obtain ⟨-, hp0, hp2, -, -⟩ := recIdWs_facts
  rcases hf with rfl | rfl | hf | hf
  · have e := cellN (x := o) (k := 0) (by have := heapEnd_lt; omega)
    refine ⟨o, ho, ht ▸ recTy_tWSR, 0, by unfold Obj.HasSlot; omega, by rw [ht]; exact hp0,
      rfl, by omega, ?_⟩
    rw [e]; unfold Obj.hi; unfold Obj.lo at hlo ⊢; omega
  · have e := cellN (x := o) (k := 2) (by have := heapEnd_lt; omega)
    refine ⟨o, ho, ht ▸ recTy_tWSR, 2, by unfold Obj.HasSlot; omega, by rw [ht]; exact hp2,
      rfl, by omega, ?_⟩
    rw [e]; unfold Obj.hi; unfold Obj.lo at hlo ⊢; omega
  · exact rcell_obj (ndbFp_rcell hN hf)
  · exact rcell_obj (ndbFp_rcell hC hf)

theorem ws_frame (Γ : Gam) (m m' : Mem) (o : Obj) (_ht : o.ty = tWSR) (hw : WsRW Γ m o)
    (hfp : ∀ a, wsFp Γ m o a → m' a = m a) : WsRW Γ m' o ∧ wsFp Γ m' o = wsFp Γ m o := by
  have e0 : txF m' o 0 = txF m o 0 := rd_congr (hfp _ (Or.inl rfl))
  have e2 : txF m' o 2 = txF m o 2 := rd_congr (hfp _ (Or.inr (Or.inl rfl)))
  obtain ⟨h1, h2, hN, hC⟩ := hw
  obtain ⟨hN', eN⟩ := ndb_frame hN (fun a ha => hfp a (Or.inr (Or.inr (Or.inl ha))))
  obtain ⟨hC', eC⟩ := ndb_frame hC (fun a ha => hfp a (Or.inr (Or.inr (Or.inr ha))))
  refine ⟨⟨h1, h2, by rw [e0]; exact hN', by rw [e2]; exact hC'⟩, ?_⟩
  funext a
  unfold wsFp
  rw [e0, e2, eN, eC]

theorem ws_mono (Γ Γ' : Gam) (m : Mem) (p : Ptrs) (o o' : Obj) (hL : Layout guestC p Γ')
    (hx : Ext Γ Γ') (ho : o ∈ Γ) (ho' : o' ∈ Γ') (hb : o'.base = o.base) (_ht' : o'.ty = o.ty)
    (_ht : o.ty = tWSR) (hw : WsRW Γ m o) : WsRW Γ' m o' := by
  obtain ⟨h1, h2, hN, hC⟩ := hw
  obtain ⟨o'', ho'', hb'', -, hs''⟩ := hx o ho
  have e : o'' = o' := gam_base_eq (gamOK_of_layout hL) ho'' ho' (hb''.trans hb.symm)
  subst e
  have hlo : o''.lo = o.lo := by unfold Obj.lo; rw [hb]
  refine ⟨by omega, by rw [hlo]; exact h2, ?_, ?_⟩
  · rw [txF_base hb]; exact ndbR_ext hx hN
  · rw [txF_base hb]; exact ndbR_ext hx hC

theorem ws_shrink (Γ Γs : Gam) (m : Mem) (o : Obj) (_hsub : ∀ o' ∈ Γs, o' ∈ Γ) (_ho : o ∈ Γs)
    (_ht : o.ty = tWSR) (hw : WsRW Γ m o) (hc : ∀ x ∈ Γ, wsRef Γ m o x.base → x ∈ Γs) :
    WsRW Γs m o := by
  obtain ⟨h1, h2, hN, hC⟩ := hw
  refine ⟨h1, h2, ndbR_shrink hN (fun a ha x hx h3 h4 => hc x hx (Or.inl ⟨a, Or.inl ha, x, hx, rfl, h3, h4⟩))
      (fun x hx hv => hc x hx (Or.inr (Or.inl hv))),
    ndbR_shrink hC (fun a ha x hx h3 h4 => hc x hx (Or.inl ⟨a, Or.inr ha, x, hx, rfl, h3, h4⟩))
      (fun x hx hv => hc x hx (Or.inr (Or.inr hv)))⟩

theorem ws_refHeap (Γ : Gam) (m : Mem) (o : Obj) (b : BitVec 64) (p : Ptrs)
    (hL : Layout guestC p Γ) (_ho : o ∈ Γ) (_ht : o.ty = tWSR) (hw : WsRW Γ m o)
    (hr : wsRef Γ m o b) : ∀ x ∈ Γ, x.base = b → (guestC.ty x.ty).region = .heap := by
  intro y hy hyb
  have hG := gamOK_of_layout hL
  obtain ⟨-, -, hN, hC⟩ := hw
  have hval : ∀ {T : BitVec 64}, NdbSlRef Γ m T b → (guestC.ty y.ty).region = .heap := by
    rintro T ⟨n, -, -, -, x, hx, hxb, hxt, -⟩
    have hxy : y = x := gam_base_eq hG hy hx (hyb.trans hxb.symm)
    subst hxy
    rw [hxt, ty_VAL]; rfl
  rcases hr with ⟨a, ha, x, hx, hxb, h1, h2⟩ | hr | hr
  · have hxy : y = x := gam_base_eq hG hy hx (hyb.trans hxb.symm)
    subst hxy
    have hrc : RCell Γ a := by
      rcases ha with ha | ha
      · exact ndbFp_rcell hN ha
      · exact ndbFp_rcell hC ha
    obtain ⟨z, hz, hzr, hz1, hz2⟩ := rcell_in hrc
    have e : z = y := gam_eq hG hz hy hz1 (by omega) h1 h2
    rw [← e]; exact hzr
  · exact hval hr
  · exact hval hr

/-- **The witness-state record entry.** -/
def wsD : RecD where
  ty := tWSR
  wf := WsRW
  fp := wsFp
  ref := wsRef
  hty := recTy_tWSR
  cells := ws_cells
  frame := ws_frame
  mono := ws_mono
  shrink := ws_shrink
  refHeap := ws_refHeap

end InitECandidate.Solver.MemSafe.Hooks

#print axioms InitECandidate.Solver.MemSafe.Hooks.ndb_frame
#print axioms InitECandidate.Solver.MemSafe.Hooks.ws_cells
#print axioms InitECandidate.Solver.MemSafe.Hooks.ws_frame
#print axioms InitECandidate.Solver.MemSafe.Hooks.ws_mono
#print axioms InitECandidate.Solver.MemSafe.Hooks.ws_shrink
#print axioms InitECandidate.Solver.MemSafe.Hooks.ws_refHeap
