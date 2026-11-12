import InitECandidate.Solver.MemSafe.Sp.Kit
import InitECandidate.Solver.MemSafe.Exb.PhA

/-!
# Sp: the allocation steps of `payload_header`, with cost (mirrors of `Exb.ph_allocH`, `ph_alloc`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Sp
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Exb

variable {σ : Type}

/-- The first allocation: the header. -/
theorem ch_allocH {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) {Rv : Gam → Ptrs → Mem → LocalsH → ValueHOL 64 → Prop}
    {kv : List (MlS × ValueHOL 64)} (hx : ∀ p ∈ kv, p.1 ≠ nm "h") {PL C : BitVec 64} {k : ProgHOL 64} {L2 : LocalsH → Prop}
    {E2 : Gam → Ptrs → Mem → LocalsH → Prop}
    {Bk : Nat} (hk : ∀ H, CH (PJ a (Trie.LV ((nm "h", Wv H) :: kv)) (EA a.p0 PL C H [] fun _ => True)) k (PP a (fun _ => False) E2 Rv) Bk) :
    CH (PJ a (Trie.LV kv) (fun Γ q _ _ => PhI PL C Γ q)) (.decCall (nm "h") .one (nm "alloc") [cw 248] k) (PP a L2 E2 Rv) (1 + 2 + Bk) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  have hZ : (BitVec.ofNat 64 248).toNat = 248 := by decide
  refine ch_decCall ha (Trie.sa_cast hCb haH Dn.alloc_R) (Trie.funSpec_allocRel hX) (by simp) (fun h => by simp at h)
    (L1 := fun v m => ∃ B : BitVec 64, v = Wv B ∧ Trie.LV ((nm "h", v) :: kv) m)
    (E1 := fun v Γ q m g => ∀ B : BitVec 64, v = Wv B → EA a.p0 PL C B [] (fun _ => True) Γ q m g) (L2 := fun _ => False)
    (hc := Wire.calleeCost_guest (f := nm "alloc") (B := 2) rfl) ?_ ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s Γ q _ hL hh hE vs hvs
    exact ⟨(anyArgsG (by simp) rfl hvs).1, fun y hy => (argCells_any (by simp) hy).elim, fun _ => trivial⟩
  · intro s st vs callee v Γ Γ' q q' _ hL hvs hE hLc hQ hh hext hh' hmo hnf hnfp hmd hret hsh B hB
    rw [evs_cons (ev_cw s 248) evs_nil] at hvs
    cases hvs
    have hnoarg : ∀ y, ¬ ArgCells ([.any] : List PT) [Wv (BitVec.ofNat 64 248)] y := fun y => argCells_any (by simp)
    have co : CO a ⟨[PT.any], [RT.freshArg 0 1 0], [], false⟩ [Wv (BitVec.ofNat 64 248)] Γ Γ' q q' s st (.returned v) :=
      ⟨hh, hext, hh', hmo, hnf, hnfp, fun y hw hal => hmd y hw (hnoarg y) (by rintro ⟨-, c, hc, -⟩; simp at hc) hal,
        fun v' hv' => by cases hv'; exact hret⟩
    obtain ⟨H', hv', hHn, hFB, hmem⟩ := Trie.alloc_fblk haC rfl co hLc rfl (by rw [hZ])
    rw [hB] at hv'
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hv'
    subst hv'
    rw [hZ] at hFB
    have hord' := heap_ord hh'
    have hLy := Ra.layout_heap haC hh'
    have hmo0 := hh.2.2.1.1
    have hq := hFB.2.2.2.1
    have hqe := hord'.2.1
    exact ⟨phI_step hord' hLy hext (hnfp rfl) hmo hE, below_nf hord' hLy (hnfp rfl) (by rw [hHn]; exact hE.2.1),
      by rw [hHn]; exact hmo0, hFB.1, by omega, hFB, (fun b hb => by cases hb), (fun b hb => by cases hb), trivial⟩
  · intro s st v hL hsh
    obtain ⟨B, rfl⟩ := val_of_shapeEq_one' hsh
    exact ⟨B, rfl, Trie.lv_new (s := { st with locals := s.locals }) hL hx _⟩
  · intro v
    by_cases hw : ∃ B : BitVec 64, v = Wv B
    swap
    · exact ch_false fun s _ h => hw (by obtain ⟨B, hB, -⟩ := h.1; exact ⟨B, hB⟩)
    obtain ⟨B, rfl⟩ := hw
    exact ch_pre (hk B) fun s _ ⟨⟨B', hB', hL⟩, Γ, q, he, hh, hE⟩ => by
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hB'
      subst hB'
      exact ⟨hL, Γ, q, he, hh, hE _ rfl⟩


section body
variable {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
  (haH : a.H = Hooks.guestHooksR (σ := σ)) (hfp : a.p0.fp = heapEnd) (hsp : a.p0.sp = scratchEnd)
include ha hfp hsp haC hCb haH

/-- A later block: `var x = alloc(n); k`. -/
theorem ch_alloc {Rv : Gam → Ptrs → Mem → LocalsH → ValueHOL 64 → Prop} {kv : List (MlS × ValueHOL 64)} {x : MlS}
    (hx : ∀ p ∈ kv, p.1 ≠ x) {n : Nat} (hn : n < 2 ^ 60) (hn8 : n % 8 = 0) {PL C H : BitVec 64} {bs : List (BitVec 64 × Nat)}
    {ck : Mem → Prop} {k : ProgHOL 64} {L2 : LocalsH → Prop} {E2 : Gam → Ptrs → Mem → LocalsH → Prop}
    {Bk : Nat} (hk : ∀ B, CH (PJ a (Trie.LV ((x, Wv B) :: kv)) (EA a.p0 PL C H ((B, n) :: bs) ck)) k (PP a (fun _ => False) E2 Rv) Bk) :
    CH (PJ a (Trie.LV kv) (EA a.p0 PL C H bs ck)) (.decCall x .one (nm "alloc") [cw n] k) (PP a L2 E2 Rv) (1 + 2 + Bk) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  have hZ : (BitVec.ofNat 64 n).toNat = n := by rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  refine ch_decCall ha (Trie.sa_cast hCb haH Dn.alloc_R) (Trie.funSpec_allocRel hX) (by simp) (fun h => by simp at h)
    (L1 := fun v m => ∃ B : BitVec 64, v = Wv B ∧ Trie.LV ((x, v) :: kv) m)
    (E1 := fun v Γ q m g => ∀ B : BitVec 64, v = Wv B → EA a.p0 PL C H ((B, n) :: bs) ck Γ q m g) (L2 := fun _ => False)
    (hc := Wire.calleeCost_guest (f := nm "alloc") (B := 2) rfl) ?_ ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s Γ q _ hL hh hE vs hvs
    exact ⟨(anyArgsG (by simp) rfl hvs).1, fun y hy => (argCells_any (by simp) hy).elim, fun _ => trivial⟩
  · intro s st vs callee v Γ Γ' q q' _ hL hvs hE hLc hQ hh hext hh' hmo hnf hnfp hmd hret hsh B hB
    rw [evs_cons (ev_cw s n) evs_nil] at hvs
    cases hvs
    have hnoarg : ∀ y, ¬ ArgCells ([.any] : List PT) [Wv (BitVec.ofNat 64 n)] y := fun y => argCells_any (by simp)
    have co : CO a ⟨[PT.any], [RT.freshArg 0 1 0], [], false⟩ [Wv (BitVec.ofNat 64 n)] Γ Γ' q q' s st (.returned v) :=
      ⟨hh, hext, hh', hmo, hnf, hnfp, fun y hw hal => hmd y hw (hnoarg y) (by rintro ⟨-, c, hc, -⟩; simp at hc) hal,
        fun v' hv' => by cases hv'; exact hret⟩
    obtain ⟨H', hv', hHn, hFB, hmem⟩ := Trie.alloc_fblk haC rfl co hLc rfl (by rw [hZ]; exact hn8)
    rw [hB] at hv'
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hv'
    subst hv'
    rw [hZ] at hFB
    have hord := heap_ord hh
    have hE1 := ea_step (m' := st.memory) (g' := st.globals) hord (heap_ord hh') (Ra.layout_heap haC hh') hext (hnfp rfl) hmo
      (fun h => by rw [hmem]; exact h) hE
    refine ⟨hE1.i, hE1.bh, hE1.p0h, hE1.al, hE1.top, hE1.fH, fun b hb => ?_, fun b hb => ?_, hE1.ck⟩
    · rcases List.mem_cons.mp hb with rfl | hb
      · exact hFB
      · exact hE1.fbs b hb
    · rcases List.mem_cons.mp hb with rfl | hb
      · have := hE.fH.2.2.2.1
        show H.toNat + 248 ≤ B.toNat
        omega
      · exact hE.abv b hb
  · intro s st v hL hsh
    obtain ⟨B, rfl⟩ := val_of_shapeEq_one' hsh
    exact ⟨B, rfl, Trie.lv_new (s := { st with locals := s.locals }) hL hx _⟩
  · intro v
    by_cases hw : ∃ B : BitVec 64, v = Wv B
    swap
    · exact ch_false fun s _ h => hw (by obtain ⟨B, hB, -⟩ := h.1; exact ⟨B, hB⟩)
    obtain ⟨B, rfl⟩ := hw
    exact ch_pre (hk B) fun s _ ⟨⟨B', hB', hL⟩, Γ, q, he, hh, hE⟩ => by
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hB'
      subst hB'
      exact ⟨hL, Γ, q, he, hh, hE _ rfl⟩


end body

end InitECandidate.Solver.MemSafe.Sp
