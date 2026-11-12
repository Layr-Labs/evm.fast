import InitECandidate.Solver.Spec.Mpt.DelPre

/-!
# The descent of `_mpt_delete_node_body` builds a sane record chain

`DInv be0 Nd S0 K KL`: the allocator pointers are ordered with `scratch_ptr ≤ S0 ≤ scratchEnd`;
`top` heads a `ChainOK` chain in `[scratch_ptr, S0)`; `res` is a word; `key = K`,
`klen = KL`; and while `go ≠ 0`, `Nd` is closed in the current memory, `node` is null or in
`Nd`, and the key bytes from `level` on are nibbles. `desc_step`: one iteration keeps `DInv`.
-/

set_option maxRecDepth 100000
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Mpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}
variable {be0 : Bool}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd gHeap gFrame gScratch)

/-! ## Footprints of the read-only callees on the allocator globals -/

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem arenaFns_gw_hp :
    arenaFns.all (fun e => gwFreeB (nm "heap_ptr") arenaNames e.2.2.1) = true := by decide_cbv

theorem arena_gwClosed_hp : GwClosed (nm "heap_ptr") arenaNames guestCode :=
  closed_of_entries (chk := gwFreeB (nm "heap_ptr")) arenaFns_valid arenaFns_gw_hp

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem memeqFns_gw3 : memeqFns.all (fun e => gwFreeB (nm "heap_ptr") (memeqFns.map Prod.fst) e.2.2.1 &&
    gwFreeB (nm "frame_mem_ptr") (memeqFns.map Prod.fst) e.2.2.1 &&
    gwFreeB (nm "scratch_ptr") (memeqFns.map Prod.fst) e.2.2.1) = true := by decide_cbv

theorem memeq_gwClosed (g : MlS) (hg : g = nm "heap_ptr" ∨ g = nm "frame_mem_ptr" ∨ g = nm "scratch_ptr") :
    GwClosed g (memeqFns.map Prod.fst) guestCode := by
  have hall := List.all_eq_true.mp memeqFns_gw3
  rcases hg with rfl | rfl | rfl
  · exact closed_of_entries (chk := gwFreeB (nm "heap_ptr")) memeqFns_valid
      (List.all_eq_true.mpr fun e he => by have := hall e he; simp_all)
  · exact closed_of_entries (chk := gwFreeB (nm "frame_mem_ptr")) memeqFns_valid
      (List.all_eq_true.mpr fun e he => by have := hall e he; simp_all)
  · exact closed_of_entries (chk := gwFreeB (nm "scratch_ptr")) memeqFns_valid
      (List.all_eq_true.mpr fun e he => by have := hall e he; simp_all)

theorem ptrsOf_congr {s t : PanSemStateFiniteExact 64 σ}
    (h1 : t.globals.lookup gHeap = s.globals.lookup gHeap)
    (h2 : t.globals.lookup gFrame = s.globals.lookup gFrame)
    (h3 : t.globals.lookup gScratch = s.globals.lookup gScratch) : ptrsOf t = ptrsOf s := by
  unfold ptrsOf MemSafe.gword; rw [h1, h2, h3]

/-- A callee that keeps memory and the three allocator globals. -/
def KeepsPM (σ : Type) (X : Ctx 64) (f : MlS) : Prop :=
  FunSpec σ X f (fun _ s _ t => t.memory = s.memory ∧ ptrsOf t = ptrsOf s)

theorem keepsPM_memeq (hC : X.code.lookup = guestCode) : KeepsPM σ X (nm "memeq") := by
  have hm := funSpec_memeq_mw (σ := σ) (X := X) hC
  have hg := fun g hg => funSpec_gw (σ := σ) (X := X) (by rw [hC]; exact memeq_gwClosed g hg) memeq_mem
  intro vs body callee rs hl s hs hloc r hr
  exact ⟨hm vs body callee rs hl s hs hloc r hr, ptrsOf_congr
    (hg _ (Or.inl rfl) vs body callee rs hl s hs hloc r hr)
    (hg _ (Or.inr (Or.inl rfl)) vs body callee rs hl s hs hloc r hr)
    (hg _ (Or.inr (Or.inr rfl)) vs body callee rs hl s hs hloc r hr)⟩

theorem keepsPM_cpl (hC : X.code.lookup = guestCode) : KeepsPM σ X (nm "common_prefix_length") := by
  have hm := funSpec_mw (σ := σ) (X := X) (by rw [hC]; exact cpl_mwClosed) cpl_mem
  have hmem : arenaNames.contains (nm "common_prefix_length") = true := by decide_cbv
  have g1 := funSpec_gw (σ := σ) (X := X) (by rw [hC]; exact arena_gwClosed_hp) hmem
  have g2 := funSpec_gw (σ := σ) (X := X) (by rw [hC]; exact arena_gwClosed_fp) hmem
  have g3 := funSpec_gw (σ := σ) (X := X) (by rw [hC]; exact arena_gwClosed_sp) hmem
  intro vs body callee rs hl s hs hloc r hr
  exact ⟨hm vs body callee rs hl s hs hloc r hr, ptrsOf_congr (g1 vs body callee rs hl s hs hloc r hr)
    (g2 vs body callee rs hl s hs hloc r hr) (g3 vs body callee rs hl s hs hloc r hr)⟩

/-! ## The invariant -/

/-- A local the invariant does not track. -/
def Trk (y : MlS) : Prop :=
  y ≠ nm "top" ∧ y ≠ nm "res" ∧ y ≠ nm "key" ∧ y ≠ nm "klen" ∧ y ≠ nm "node" ∧
    y ≠ nm "level" ∧ y ≠ go_

theorem trk_of (s : String) (h : (decide (nm s ≠ nm "top") && decide (nm s ≠ nm "res") &&
    decide (nm s ≠ nm "key") && decide (nm s ≠ nm "klen") && decide (nm s ≠ nm "node") &&
    decide (nm s ≠ nm "level") && decide (nm s ≠ go_)) = true := by decide) : Trk (nm s) := by
  simp only [Bool.and_eq_true, decide_eq_true_eq] at h
  obtain ⟨⟨⟨⟨⟨⟨h1, h2⟩, h3⟩, h4⟩, h5⟩, h6⟩, h7⟩ := h
  exact ⟨h1, h2, h3, h4, h5, h6, h7⟩

/-- The unconditional part. -/
def DF (S0 : Nat) (K KL : BitVec 64) (t : PanSemStateFiniteExact 64 σ) : Prop :=
  (∃ p : Ptrs, ptrsOf t = some p ∧ p.Ordered ∧ p.sp ≤ S0 ∧
    ∃ T : BitVec 64, t.locals.lookup (nm "top") = some (.val (.word T)) ∧
      ChainOK t.memory p.sp S0 T) ∧ S0 ≤ scratchEnd ∧
  (∃ R : BitVec 64, t.locals.lookup (nm "res") = some (.val (.word R))) ∧
  t.locals.lookup (nm "key") = some (.val (.word K)) ∧
  t.locals.lookup (nm "klen") = some (.val (.word KL))

/-- The active part, while descending. -/
def DA (be0 : Bool) (Nd : BitVec 64 → Prop) (K KL : BitVec 64) (t : PanSemStateFiniteExact 64 σ) : Prop :=
  NdClosed t.memory Nd ∧
  (∃ N, t.locals.lookup (nm "node") = some (.val (.word N)) ∧ NullOrNd Nd N) ∧
  ∃ Lv, t.locals.lookup (nm "level") = some (.val (.word Lv)) ∧ KeyNib be0 t.memory K KL Lv

def DInv (be0 : Bool) (Nd : BitVec 64 → Prop) (S0 : Nat) (K KL : BitVec 64)
    (t : PanSemStateFiniteExact 64 σ) : Prop :=
  DF S0 K KL t ∧ (∃ g : BitVec 64, t.locals.lookup go_ = some (.val (.word g))) ∧
    (wl t go_ ≠ 0 → DA be0 Nd K KL t)

/-- `DF` survives a step that keeps the tracked locals, keeps the allocator pointers ordered
with the same `scratch_ptr`, and changes memory only below it. -/
theorem df_frame {S0 : Nat} {K KL : BitVec 64} {t t' : PanSemStateFiniteExact 64 σ}
    (hl : ∀ y, y = nm "top" ∨ y = nm "res" ∨ y = nm "key" ∨ y = nm "klen" →
      t'.locals.lookup y = t.locals.lookup y)
    (hp : ∀ p : Ptrs, ptrsOf t = some p → p.Ordered → ∃ p' : Ptrs, ptrsOf t' = some p' ∧
      p'.Ordered ∧ p'.sp = p.sp ∧ ∀ a : BitVec 64, p.sp ≤ a.toNat → t'.memory a = t.memory a)
    (h : DF S0 K KL t) : DF S0 K KL t' := by
  obtain ⟨⟨p, hp0, hord, hsp, T, hT, hch⟩, hS0, ⟨R, hR⟩, hk, hkl⟩ := h
  obtain ⟨p', hp', hord', hsp', hm⟩ := hp p hp0 hord
  have hS0' : S0 ≤ 2 ^ 64 := by simp only [scratchEnd] at hS0; omega
  refine ⟨⟨p', hp', hord', by omega, T, by rw [hl _ (Or.inl rfl)]; exact hT, ?_⟩, hS0,
    ⟨R, by rw [hl _ (Or.inr (Or.inl rfl))]; exact hR⟩,
    by rw [hl _ (Or.inr (Or.inr (Or.inl rfl)))]; exact hk,
    by rw [hl _ (Or.inr (Or.inr (Or.inr rfl)))]; exact hkl⟩
  rw [hsp']
  exact chainOK_frame hS0' _ _ _ rfl (fun a ha _ => hm a ha) hch

theorem da_frame {Nd : BitVec 64 → Prop} {K KL : BitVec 64} {t t' : PanSemStateFiniteExact 64 σ}
    (hl : ∀ y, y = nm "node" ∨ y = nm "level" → t'.locals.lookup y = t.locals.lookup y)
    (hZ : HeapZ t.memory t'.memory) (h : DA be0 Nd K KL t) : DA be0 Nd K KL t' := by
  obtain ⟨hcl, ⟨N, hN, hnn⟩, Lv, hLv, hkn⟩ := h
  exact ⟨ndClosed_heapZ hZ hcl, ⟨N, by rw [hl _ (Or.inl rfl)]; exact hN, hnn⟩,
    Lv, by rw [hl _ (Or.inr rfl)]; exact hLv, keyNib_heapZ hZ hkn⟩

/-- Same locals, same pointers, same memory: both parts survive. -/
theorem sameState_ptrs {t t' : PanSemStateFiniteExact 64 σ} (hp : ptrsOf t' = ptrsOf t)
    (hm : t'.memory = t.memory) :
    ∀ p : Ptrs, ptrsOf t = some p → p.Ordered → ∃ p' : Ptrs, ptrsOf t' = some p' ∧
      p'.Ordered ∧ p'.sp = p.sp ∧ ∀ a : BitVec 64, p.sp ≤ a.toNat → t'.memory a = t.memory a :=
  fun p h1 h2 => ⟨p, hp.trans h1, h2, rfl, fun a _ => by rw [hm]⟩

theorem trk_lookup_set {t : PanSemStateFiniteExact 64 σ} {y : MlS} (hy : Trk y) (v : ValueHOL 64) :
    ∀ x, x ≠ y → (setVarHOLFinite y v t).locals.lookup x = t.locals.lookup x :=
  fun x hx => lk_set_ne _ _ (Ne.symm hx)

theorem dinv_set {Nd : BitVec 64 → Prop} {S0 : Nat} {K KL : BitVec 64}
    {t : PanSemStateFiniteExact 64 σ} {y : MlS} (hy : Trk y) (v : ValueHOL 64)
    (hdf : DF S0 K KL t) : DF S0 K KL (setVarHOLFinite y v t) := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7⟩ := hy
  refine df_frame (t := t) (fun x hx => ?_) (sameState_ptrs (t := t) rfl rfl) hdf
  rcases hx with rfl | rfl | rfl | rfl
  · exact lk_set_ne _ _ h1
  · exact lk_set_ne _ _ h2
  · exact lk_set_ne _ _ h3
  · exact lk_set_ne _ _ h4

theorem da_set {Nd : BitVec 64 → Prop} {K KL : BitVec 64} {t : PanSemStateFiniteExact 64 σ}
    {y : MlS} (hy : Trk y) (v : ValueHOL 64) (h : DA be0 Nd K KL t) :
    DA be0 Nd K KL (setVarHOLFinite y v t) := by
  refine da_frame (t := t) (fun x hx => ?_) (heapZ_refl _) h
  rcases hx with rfl | rfl
  · exact lk_set_ne _ _ hy.2.2.2.2.1
  · exact lk_set_ne _ _ hy.2.2.2.2.2.1

theorem dinv_restore {Nd : BitVec 64 → Prop} {S0 : Nat} {K KL : BitVec 64}
    {t : PanSemStateFiniteExact 64 σ} {y : MlS} (hy : Trk y) (old : Option (ValueHOL 64))
    (h : DInv be0 Nd S0 K KL t) : DInv be0 Nd S0 K KL { t with locals := t.locals.resVarEq (y, old) } := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7⟩ := hy
  have hl : ∀ x, x ≠ y → ({ t with locals := t.locals.resVarEq (y, old) } :
      PanSemStateFiniteExact 64 σ).locals.lookup x = t.locals.lookup x :=
    fun x hx => lookup_resVarEq_ne _ _ (Ne.symm hx)
  obtain ⟨hdf, ⟨g, hg⟩, hda⟩ := h
  refine ⟨df_frame (t := t) (fun x hx => by
      rcases hx with rfl | rfl | rfl | rfl
      exacts [hl _ (Ne.symm h1), hl _ (Ne.symm h2), hl _ (Ne.symm h3), hl _ (Ne.symm h4)])
    (sameState_ptrs (t := t) rfl rfl) hdf, ⟨g, by rw [hl _ (Ne.symm h7)]; exact hg⟩, fun hgo => ?_⟩
  have hw : wl { t with locals := t.locals.resVarEq (y, old) } go_ = wl t go_ :=
    wl_congr (hl _ (Ne.symm h7))
  refine da_frame (t := t) (fun x hx => by
      rcases hx with rfl | rfl
      exacts [hl _ (Ne.symm h5), hl _ (Ne.symm h6)]) (heapZ_refl _)
    (hda (by rw [← hw]; exact hgo))

theorem kp_dinv_restore {Nd : BitVec 64 → Prop} {S0 : Nat} {K KL : BitVec 64}
    {r : Option (PanSemResultExact 64)} {t : PanSemStateFiniteExact 64 σ} {y : MlS} (hy : Trk y)
    (old : Option (ValueHOL 64)) (h : KP (DInv be0 Nd S0 K KL) r t) :
    KP (DInv be0 Nd S0 K KL) r { t with locals := t.locals.resVarEq (y, old) } :=
  h.mono (dinv_restore hy old)

/-- A terminal state: `DF` and `go = 0`. -/
theorem dinv_of_term {Nd : BitVec 64 → Prop} {S0 : Nat} {K KL : BitVec 64}
    {t : PanSemStateFiniteExact 64 σ} (hdf : DF S0 K KL t) (hgo : GoZ t) : DInv be0 Nd S0 K KL t :=
  ⟨hdf, ⟨0, hgo⟩, fun h => absurd (by rw [wl_of hgo]) h⟩

end InitECandidate.Solver.Spec.Mpt
