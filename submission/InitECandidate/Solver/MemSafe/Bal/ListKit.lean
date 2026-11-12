import InitECandidate.Solver.MemSafe.Bal.UpsertCode

set_option maxRecDepth 100000
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Bal
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- Signed `<` on small words is `<` on numbers. -/
theorem lt_signed {x y : BitVec 64} (hx : x.toNat < 2 ^ 63) (hy : y.toNat < 2 ^ 63) :
    Flapjack.Compiler.Encoders.Asm.wordCmpHOL .less x y = true ↔ x.toNat < y.toNat := by
  have hx' : x.toNat < 9223372036854775808 := by omega
  have hy' : y.toNat < 9223372036854775808 := by omega
  simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL,
    Flapjack.Compiler.Encoders.Asm.holAsmSignedLess]
  simp [hx', hy']

theorem isLstA_of_larr {L x : Obj} (h : x.ty = tLSTAh ∨ (x.ty = tLSTAs ∧ x.hi = L.lo)) :
    IsLstA x.ty := by
  rcases h with h | ⟨h, -⟩
  · exact Or.inl h
  · exact Or.inr h

section arr
variable {H : Hooks σ} {Γ0 : Gam} {s0 : State σ}

/-- The array of a list header: base `PTR`, room for `E * CAP` bytes, `N ≤ CAP`, all inside the heap. -/
theorem lst_arr (hLH : LstHooks H) (hG0 : G guestC H Γ0 s0) {L0 : Obj} (hL0 : L0 ∈ Γ0)
    (hLt : L0.ty ∈ lstTys) :
    ∃ x ∈ Γ0, IsLstA x.ty ∧ x.base = lP s0.memory L0 ∧
      lstE L0.ty * (lC s0.memory L0).toNat ≤ x.size ∧
      (lN s0.memory L0).toNat ≤ (lC s0.memory L0).toNat ∧ x.hi ≤ scratchEnd := by
  obtain ⟨hlo, hnc, hc0, x, hx, hxb, hxt, hxs⟩ := lst_hook hLH hG0 hL0 hLt
  obtain ⟨q, -, hord, hLay, -⟩ := hG0
  have := (Struct.obj_bounds hord hLay hx).2.1
  exact ⟨x, hx, isLstA_of_larr (L := L0) hxt, hxb, hxs, hnc, this⟩

/-- Element `I < CAP`: its first slot, its end, and the address arithmetic. -/
theorem lst_elem {x : Obj} {E : Nat} (hE8 : E % 8 = 0) (hE0 : 0 < E) (hE64 : E ≤ 64) {cap : Nat}
    (hs : E * cap ≤ x.size) (hhi : x.hi ≤ scratchEnd) {I : BitVec 64} (hI : I.toNat < cap) :
    x.HasSlot (I.toNat * (E / 8)) ∧ 8 * (I.toNat * (E / 8)) + E ≤ x.size ∧
      x.base + I * BitVec.ofNat 64 E = x.cell (I.toNat * (E / 8)) := by
  have hse : scratchEnd < 2 ^ 32 := by decide
  have hlt : I.toNat * E < 2 ^ 32 := by
    have h1 : I.toNat * E ≤ cap * E := Nat.mul_le_mul_right _ (by omega)
    have h2 : cap * E = E * cap := Nat.mul_comm _ _
    unfold Obj.hi at hhi
    omega
  have hE' : 8 * (E / 8) = E := by omega
  have hk : 8 * (I.toNat * (E / 8)) = I.toNat * E := by
    rw [Nat.mul_left_comm, hE']
  have hle : (I.toNat + 1) * E ≤ E * cap := by
    have : (I.toNat + 1) * E ≤ cap * E := Nat.mul_le_mul_right _ (by omega)
    rwa [Nat.mul_comm cap] at this
  have hA : I.toNat * E + E ≤ x.size := by
    have : (I.toNat + 1) * E = I.toNat * E + E := by rw [Nat.add_mul, Nat.one_mul]
    omega
  refine ⟨?_, ?_, ?_⟩
  · unfold Obj.HasSlot; rw [hk]; omega
  · rw [hk]; omega
  · unfold Obj.cell
    congr 1
    apply BitVec.eq_of_toNat_eq
    rw [BitVec.toNat_mul, BitVec.toNat_ofNat, BitVec.toNat_ofNat, hk,
      Nat.mod_eq_of_lt (show E < 2 ^ 64 by omega)]

/-- The slot `lst_push` returns is an element of a list array of the final typing. -/
theorem lpR_slotE {L0 : Obj} {N0 : BitVec 64} {v : ValueHOL 64} {t : State σ} {Γ' : Gam}
    (hR : LpR L0 N0 v t Γ') (hG : G guestC H Γ' t) (hLt : L0.ty ∈ lstTys) :
    ∃ w, v = .val (.word w) ∧ ∃ x ∈ Γ', IsLstA x.ty ∧ ∃ k, x.HasSlot k ∧ w = x.cell k ∧
      8 * k + lstE L0.ty ≤ x.size := by
  obtain ⟨L, -, -, -, rfl, -, x, hx, hxb, hxt, hxs⟩ := hR
  obtain ⟨hE0, hE8, hE64⟩ := lstE_pos _ hLt
  obtain ⟨q, -, hord, hLay, -⟩ := hG
  have hhi := (Struct.obj_bounds hord hLay hx).2.1
  obtain ⟨h1, h2, h3⟩ := lst_elem hE8 hE0 hE64 hxs hhi (I := N0) (cap := N0.toNat + 1) (by omega)
  refine ⟨_, rfl, x, hx, isLstA_of_larr (L := L) hxt, _, h1, ?_, h2⟩
  rw [← h3, hxb]

end arr

section trk
variable {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {PW : BitVec 64 → Prop}

/-- **A block write into list array cells** keeps the tracking. -/
theorem trk_arrR (hH : HooksLawful guestC H) (hLH : LstHooks H) {Γ : Gam} {t t' : State σ}
    (h : Struct.Trk guestC H Γ0 s0 p0 PW Γ t) {R : BitVec 64 → Prop}
    (hmod : ModifiesOnly R t.memory t'.memory) (hg : t'.globals = t.globals)
    (hd : t'.memaddrs = t.memaddrs) (hbe : t'.be = t.be)
    (hR : ∀ a, R a → ∃ A ∈ Γ, IsLstA A.ty ∧ ∃ k, A.HasSlot k ∧ a = A.cell k)
    (hPW : ∀ a, R a → PW a) : Struct.Trk guestC H Γ0 s0 p0 PW Γ t' := by
  obtain ⟨p, hp, hm, hx, hnf, hG, hmod0, hpg, hd0, hbe0⟩ := h
  obtain ⟨pG, hpG, hord, hLay, -⟩ := id hG
  have hGt : G guestC H Γ t' := by
    refine G_frame_prot hH hG (Frames.ptrsOf_congr hg) (fun g _ _ => ?_)
      (fun g _ => by rw [hg]) hd hbe hmod ?_ ?_ ?_
    · unfold gword; rw [hg]
    · intro a ha
      obtain ⟨A, hA, hAt, k, hk, rfl⟩ := hR a ha
      exact ⟨A, hA, k, hk, lstA_prot hAt k, rfl⟩
    · intro o ho htg hob
      obtain ⟨A, hA, hAt, k, hk, hbk⟩ := hR _ hob
      have hnone := lstA_untagged hAt
      obtain ⟨-, h1, h2⟩ := cell_lay hord hLay hA hk
      have hlo : o.base.toNat = (A.cell k).toNat := by rw [hbk]
      have hpos := (hLay.1 o ho).2.2.1
      have := gam_eq (gamOK_of_layout hLay) hA ho h1 h2 (by unfold Obj.lo; omega)
        (by unfold Obj.hi; omega)
      subst this
      rw [hnone] at htg
      simp at htg
    · rintro o ho ⟨b, hb, hf⟩
      obtain ⟨A, hA, hAt, k, hk, hbk⟩ := hR b hb
      obtain ⟨-, h1, h2⟩ := cell_lay hord hLay hA hk
      obtain ⟨-, hl⟩ := hLH.loc Γ _ o A b hA hf (by rw [hbk]; exact h1) (by rw [hbk]; exact h2) (Or.inr hAt)
      exact absurd hl (lstA_ne hAt).2.2.2.1
  refine ⟨p, by rw [Frames.ptrsOf_congr hg]; exact hp, hm, hx, hnf, hGt, ?_, fun g hg' => by rw [hg]; exact hpg g hg',
    hd.trans hd0, hbe.trans hbe0⟩
  intro b hbn
  have hbR : ¬ R b := fun hb => hbn (Or.inr (Or.inr (hPW b hb)))
  rw [hmod b hbR]
  exact hmod0 b hbn

/-- An aligned cell overlapping a byte range inside an object is a slot of that object. -/
theorem overlap_cell {x : Obj} (hlo8 : x.lo % 8 = 0) (hsz8 : x.size % 8 = 0) (hhi : x.hi < 2 ^ 64)
    {D N : Nat} (h1 : x.lo ≤ D) (h2 : D + N ≤ x.hi) {a : BitVec 64} (ha : Overlap D N a) :
    ∃ k, x.HasSlot k ∧ a = x.cell k := by
  obtain ⟨ha8, ha1, ha2⟩ := ha
  have hlo : x.lo ≤ a.toNat := by omega
  have hhi' : a.toNat < x.hi := by omega
  refine ⟨(a.toNat - x.lo) / 8, ?_, ?_⟩
  · unfold Obj.HasSlot
    unfold Obj.hi Obj.lo at *
    omega
  · apply BitVec.eq_of_toNat_eq
    unfold Obj.cell
    rw [BitVec.toNat_add, BitVec.toNat_ofNat]
    unfold Obj.hi Obj.lo at *
    have : 8 * ((a.toNat - x.base.toNat) / 8) = a.toNat - x.base.toNat := by omega
    rw [this]
    have hlt : x.base.toNat + (a.toNat - x.base.toNat) < 2 ^ 64 := by omega
    rw [Nat.mod_eq_of_lt (show a.toNat - x.base.toNat < 2 ^ 64 by omega)]
    rw [Nat.mod_eq_of_lt hlt]
    omega

/-- A write to list array cells leaves the list header cells alone. -/
theorem hdr_keep {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hLay : Layout guestC p Γ)
    {t t' : State σ} {R : BitVec 64 → Prop} (hmod : ModifiesOnly R t.memory t'.memory)
    (hR : ∀ a, R a → ∃ A ∈ Γ, IsLstA A.ty ∧ ∃ k, A.HasSlot k ∧ a = A.cell k)
    {L : Obj} (hL : L ∈ Γ) (hLt : L.ty ∈ lstTys) {j : Nat} (hj : j < 3) :
    rd t'.memory (L.cell j) = rd t.memory (L.cell j) := by
  have hns : ¬ R (L.cell j) := by
    intro hr
    obtain ⟨A, hA, hAt, k, hk, he⟩ := hR _ hr
    obtain ⟨rfl, -⟩ := cell_inj hord hLay hL hA (lst_slot hLay hL hLt hj) hk he
    exact (lstA_ne hAt).2.2.2.1 hLt
  rw [rd, rd, hmod _ hns]

theorem toNat_sub1 {x : BitVec 64} (h : 0 < x.toNat) : (x - BitVec.ofNat 64 1).toNat = x.toNat - 1 := by
  rw [BitVec.toNat_sub_of_le (by rw [BitVec.le_def]; simp; omega)]
  simp

theorem cell_add (x : Obj) (k m : Nat) : x.cell k + BitVec.ofNat 64 (8 * m) = x.cell (k + m) := by
  unfold Obj.cell
  rw [BitVec.add_assoc, BitVec.ofNat_add_ofNat]
  congr 2
  omega

/-- **A multi-word store into the cells `k .. k+n-1` of a list array** keeps the tracking. -/
theorem trk_wordsA (hH : HooksLawful guestC H) (hLH : LstHooks H) {Γ : Gam} {t : State σ}
    (h : Struct.Trk guestC H Γ0 s0 p0 PW Γ t) {x : Obj} (hx : x ∈ Γ) (hxt : IsLstA x.ty) {k n : Nat}
    (hkn : 8 * (k + n) ≤ x.size) {vals : List (HolWordLab 64)} (hlen : vals.length = n) {mem : Mem}
    (hmem : @panMemStoresHOL 64 _ (x.cell k) vals t.memaddrs
      (fun y => Classical.propDecidable (t.memaddrs y)) t.memory = some mem)
    (hPW : ∀ j, j < n → PW (x.cell (k + j))) :
    Struct.Trk guestC H Γ0 s0 p0 PW Γ { t with memory := mem } := by
  obtain ⟨hmod, -⟩ := Helpers.stores_mod hmem
  refine trk_arrR hH hLH h (R := fun a => ∃ j, j < vals.length ∧ a = x.cell k + BitVec.ofNat 64 (8 * j))
    hmod rfl rfl rfl ?_ ?_
  · rintro a ⟨j, hj, rfl⟩
    refine ⟨x, hx, hxt, k + j, ?_, (cell_add x k j).symm ▸ rfl⟩
    unfold Obj.HasSlot; omega
  · rintro a ⟨j, hj, rfl⟩
    rw [cell_add]
    exact hPW j (by omega)

end trk

end InitECandidate.Solver.MemSafe.Bal
