import InitECandidate.Solver.MemSafe.Ptx.PtT20

/-!
# F3g: `stable_logs = lst_new(8, cap)` and its header store (`LstOK`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type}

section ln2
variable {A : TlA σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj}

theorem tl_addO {u : State σ} {Γ : Gam} {p : Ptrs} (h : TlS A ref Z O u Γ p) {x : Obj} (hx : x ∈ Γ)
    (hh : (guestC.ty x.ty).region = .heap) : TlS A ref Z (O ++ [x]) u Γ p := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14⟩ := h
  refine ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, fun o ho => ?_, fun o ho => ?_, h14⟩
  · rcases List.mem_append.mp ho with ho | ho
    · exact h12 o ho
    · simp only [List.mem_singleton] at ho
      subst ho
      exact ⟨o, hx, rfl, rfl, le_refl _⟩
  · rcases List.mem_append.mp ho with ho | ho
    · exact h13 o ho
    · simp only [List.mem_singleton] at ho
      subst ho
      exact hh

/-- **`lst_new(8, c)`** from a `TlS` state: the array and the header join the typing; their cells are as built. -/
theorem lstnew_core {c : Nat} (hc0 : 0 < c) (hEC : 8 * c < 2 ^ 64) {s st : State σ} {Γ : Gam} {p : Ptrs}
    (hr : TlS A ref Z O s Γ p) {callee : Locs} {v : ValueHOL 64}
    (hR : SumRelX guestC (HR σ) (lnSigL tLSTh c) (fun _ _ _ => True)
      (fun vs s Γ a => ProtCell guestC Γ a ∧ False)
      (fun _ _ Γ r t' Γ' => ∀ v, r = .returned v → LnQL tLSTh Γ (BitVec.ofNat 64 c) v t' Γ')
      [.val (.word (BitVec.ofNat 64 (lstE tLSTh))), .val (.word (BitVec.ofNat 64 c))]
      (callEntryStateHOLFinite s callee) (.returned v) st)
    (hgl : ∀ g, cW.contains g = false → st.globals.lookup g = s.globals.lookup g) :
    ∃ (Γ' : Gam) (p' : Ptrs) (l q : BitVec 64), TlS A ref Z O { st with locals := s.locals } Γ' p' ∧
      v = .val (.word l) ∧
      Γ' = Γ ++ [⟨q, tLSTAh, lstE tLSTh * c⟩] ++ [⟨l, tLSTh, 24⟩] ∧
      rd st.memory (l + BitVec.ofNat 64 0) = q ∧ rd st.memory (l + BitVec.ofNat 64 8) = 0 ∧
      rd st.memory (l + BitVec.ofNat 64 16) = BitVec.ofNat 64 c := by
  have hcn : (BitVec.ofNat 64 c).toNat = c := by
    rw [BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt (by omega)
  have hsg : ∀ vs, ArgsOK guestC Γ p (lnSigL tLSTh c).params vs → True := fun _ _ => trivial
  obtain ⟨Γ', p', hc, hrun, hq⟩ := tl_call_core2 (Pre := fun _ _ _ => True) (PWx := fun _ _ _ _ => False) hR hgl
    (by simp [lnSigL]) (by simp [JrOut, lnSigL]) (fun _ _ h => h.elim) hr argsOK_eq2 (argCells_nb _ (by simp [lnSigL])) trivial
  obtain ⟨l, q, hlv, hΓ, hm0, hm8, hm16⟩ := hq _ rfl
  rw [hcn] at hΓ
  exact ⟨Γ', p', l, q, hrun, hlv, hΓ, hm0, hm8, hm16⟩

/-- **The header store `st l + 8, nl`** of the fresh list keeps `G`. -/
theorem G_st_newhdr {Γ' : Gam} {st : State σ} (hG : G guestC (HR σ) Γ' st) {l q capw nlw : BitVec 64} {c : Nat}
    (hhdr : (⟨l, tLSTh, 24⟩ : Obj) ∈ Γ') (harr : (⟨q, tLSTAh, lstE tLSTh * c⟩ : Obj) ∈ Γ')
    (hm0 : rd st.memory (l + BitVec.ofNat 64 0) = q) (hm16 : rd st.memory (l + BitVec.ofNat 64 16) = capw)
    (hcap : capw.toNat = c) (hle : nlw.toNat ≤ c) (hpos : 0 < c) :
    G guestC (HR σ) Γ' { st with memory := Frames.upd st.memory (l + BitVec.ofNat 64 8) nlw } := by
  obtain ⟨pG, hpG, hord, hLay, -, -, -, -⟩ := id hG
  let L : Obj := ⟨l, tLSTh, 24⟩
  have hk1 : L.HasSlot 1 := by simp [Obj.HasSlot, L]
  have hk2 : L.HasSlot 2 := by simp [Obj.HasSlot, L]
  have hk0 : L.HasSlot 0 := by simp [Obj.HasSlot, L]
  have hc0 : L.cell 0 = l + BitVec.ofNat 64 0 := by unfold Obj.cell; rfl
  have hc1 : L.cell 1 = l + BitVec.ofNat 64 8 := by unfold Obj.cell; rfl
  have hc2 : L.cell 2 = l + BitVec.ofNat 64 16 := by unfold Obj.cell; rfl
  have hn10 : L.cell 1 ≠ L.cell 0 := cell_ne_k hord hLay hhdr hk1 hk0 (by omega)
  have hn12 : L.cell 1 ≠ L.cell 2 := cell_ne_k hord hLay hhdr hk1 hk2 (by omega)
  have hlive := (hLay.1 L hhdr).2.2.2.2
  have hreg : (guestC.ty tLSTh).region = Region.heap := by decide
  have hlive' : heapBase ≤ l.toNat ∧ l.toNat + 24 ≤ pG.hp := by
    have := hlive
    rw [show (guestC.ty L.ty).region = Region.heap from hreg] at this
    exact this
  have hok : LstOK Γ' (Frames.upd st.memory (L.cell 1) nlw) L := by
    refine ⟨?_, ?_, ?_, ?_⟩
    · have := hord.2.1
      have h2 : heapEnd ≤ scratchEnd := by decide
      simp only [Obj.lo, L]
      omega
    · show (rd (Frames.upd st.memory (L.cell 1) nlw) (L.cell 1)).toNat ≤ (rd (Frames.upd st.memory (L.cell 1) nlw) (L.cell 2)).toNat
      rw [rd_upd_self, rd_upd_ne _ _ hn12.symm, hc2, hm16, hcap]
      exact hle
    · show 0 < (rd (Frames.upd st.memory (L.cell 1) nlw) (L.cell 2)).toNat
      rw [rd_upd_ne _ _ hn12.symm, hc2, hm16, hcap]
      exact hpos
    · show LArr Γ' L (rd (Frames.upd st.memory (L.cell 1) nlw) (L.cell 0))
        (lstE L.ty * (rd (Frames.upd st.memory (L.cell 1) nlw) (L.cell 2)).toNat)
      rw [rd_upd_ne _ _ hn10.symm, rd_upd_ne _ _ hn12.symm, hc0, hc2, hm0, hm16, hcap]
      exact ⟨⟨q, tLSTAh, lstE tLSTh * c⟩, harr, rfl, Or.inl rfl, le_refl _⟩
  have := G_st_lhdr hG hhdr (L := L) lstTLSTh_ok (k := 1) (by omega) nlw hok
  rwa [hc1] at this

theorem tl_ref_congr {u : State σ} {Γ : Gam} {p : Ptrs} (h : TlS A ref Z O u Γ p) {ref' : BitVec 64 → BitVec 64}
    (hr : ∀ a, Z a → ref' a = ref a) : TlS A ref' Z O u Γ p := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14⟩ := h
  exact ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, fun a ha => (h11 a ha).trans (hr a ha).symm, h12, h13, h14⟩

theorem pag_ref_congr {En : Env} {u : State σ} (h : PAg (TL A ref Z O) En u) {ref' : BitVec 64 → BitVec 64}
    (hr : ∀ a, Z a → ref' a = ref a) : PAg (TL A ref' Z O) En u :=
  ⟨by obtain ⟨Γ, p, hr'⟩ := h.1; exact ⟨Γ, p, tl_ref_congr hr' hr⟩, h.2⟩

end ln2

end InitECandidate.Solver.MemSafe.Ptx
