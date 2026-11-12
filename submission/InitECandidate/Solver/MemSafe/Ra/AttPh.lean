import InitECandidate.Solver.MemSafe.Ra.AttKit7

/-!
# `run_attempt`: the call of `payload_header` and the rebase of the walk

After `payload_header` returns, its header block and its withdrawal-slice array are adopted as `tBOS` objects and the walk is re-anchored at the
post state (`ebRun_refl`): the post of `payload_header` is stated at a ghost activation, so no `Ptrs.Mono` from the real entry is available.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Att
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

theorem adopt_two {Γ' : Gam} {t : State σ} {q' p0 : Ptrs} {H WD : BitVec 64} {NW : Nat}
    (hG : G guestC (HR σ) Γ' t) (hq : ptrsOf t = some q')
    (fH : Trie.FBlk p0 H 248 Γ' q') (fD : Trie.FBlk p0 WD (NW * 16 + 16) Γ' q') (hdis : H.toNat + 248 ≤ WD.toNat) :
    G guestC (HR σ) ((Γ' ++ [(⟨H, tBOS, 248⟩ : Obj)]) ++ [(⟨WD, tBOS, NW * 16 + 16⟩ : Obj)]) t := by
  have hmin : (guestC.ty tBOS).minSz = 16 := rfl
  have G1 : G guestC (HR σ) (Γ' ++ [(⟨H, tBOS, 248⟩ : Obj)]) t := by
    refine g_adopt_blk hG hq (x := ⟨H, tBOS, 248⟩) (Or.inl rfl) fH.1 (by show 248 % 8 = 0; decide) (by rw [hmin]; show 16 ≤ 248; decide) (by show 0 < 248; decide)
      ⟨fH.2.2.1, fH.2.2.2.1⟩ ?_
    intro a ha
    exact (fH.2.2.2.2 a.toNat ha.1 ha.2).1
  refine g_adopt_blk G1 hq (x := ⟨WD, tBOS, NW * 16 + 16⟩) (Or.inl rfl) ?_ (by show (NW * 16 + 16) % 8 = 0; omega)
    (by rw [hmin]; show 16 ≤ NW * 16 + 16; omega) (by show 0 < NW * 16 + 16; omega) ⟨fD.2.2.1, fD.2.2.2.1⟩ ?_
  · exact fD.1
  · intro a ha
    rintro ⟨o, ho, h1, h2⟩
    rcases List.mem_append.mp ho with ho | ho
    · exact (fD.2.2.2.2 a.toNat ha.1 ha.2).1 ⟨o, ho, h1, h2⟩
    · have : o = ⟨H, tBOS, 248⟩ := List.mem_singleton.mp ho
      subst this
      have e1 : WD.toNat ≤ a.toNat := ha.1
      have e2 : a.toNat < H.toNat + 248 := h2
      omega

theorem prot_in_heap {Γ : Gam} {p : Ptrs} (hC : CPre Γ) (hord : p.Ordered) (hL : Layout guestC p Γ) {a : BitVec 64}
    (h : ProtCell guestC Γ a) : heapBase ≤ a.toNat ∧ a.toNat < p.hp := by
  obtain ⟨o, ho, k, hk, -, rfl⟩ := h
  have h1 := cell_toNat hord hL ho hk
  have h2 := (live_of hL ho).1 (hC.1 o ho)
  unfold Obj.HasSlot at hk
  have e : o.hi = o.lo + o.size := rfl
  omega

theorem ph_post {Γ Γ' : Gam} {p q' : Ptrs} {u t : State σ} {v : ValueHOL 64}
    {si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh : BitVec 64} {p0 : Ptrs} {PL C : BitVec 64}
    (hK : HypKeepG σ) (hC : CPre Γ) (hG : G guestC (HR σ) Γ u) (hp : ptrsOf u = some p)
    (hL : HoldsAll p0 Γ p u (S2b si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh))
    (hG' : G guestC (HR σ) Γ' t) (hq' : ptrsOf t = some q') (hext : Ext Γ Γ')
    (hmod : ModifiesOnly (fun x => WCell guestC Γ x ∨ ¬ (Exb.gp0 p).Allocated x.toNat) u.memory t.memory)
    (hgl : ∀ g ∈ Z1b, t.globals.lookup g = u.globals.lookup g) (hEC : EvCc t)
    (hRy : Exb.PhRy (Exb.gp0 p) u.memory PL C Γ' q' t.memory t.globals v)
    (hPL : PL = rd u.memory (si0 + BitVec.ofNat 64 0)) :
    ∃ (H C' WD : BitVec 64) (Γk : Gam), v = Exb.Wv H ∧ G guestC (HR σ) Γk t ∧ (∀ o ∈ Γk, KeepTy o.ty) ∧
      HoldsAll q' Γk q' t (S2 si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh H C' WD) := by
  obtain ⟨H, WR, RH, BH, WD, NW, hN32, hNW, hvH, hEC'⟩ := hRy
  have hpcv0 := (hL (Fct.pcv (si0 + BitVec.ofNat 64 0) pl0) (by simp [S2b])).1
  have hpcv56 := (hL (Fct.pcv (pl0 + BitVec.ofNat 64 56) nwd0) (by simp [S2b])).1
  have hPL' : pl0 = PL := (hPL.trans hpcv0).symm
  subst hPL'
  have hNW' : NW = nwd0.toNat := by rw [hNW, hpcv56]
  subst hNW'
  obtain ⟨q0, hq0, hord, hL0, -⟩ := id hG
  obtain rfl : p = q0 := (Option.some.inj (hq0.symm.trans hp)).symm
  have fH := hEC'.fH
  have fD := hEC'.fD
  have hdis : H.toNat + 248 ≤ WD.toNat := by
    have := hEC'.oW; have := hEC'.dW; omega
  have hG'' := adopt_two hG' hq' fH fD hdis
  let x1 : Obj := ⟨H, tBOS, 248⟩
  let x2 : Obj := ⟨WD, tBOS, nwd0.toNat * 16 + 16⟩
  have hext'' : Ext Γ ((Γ' ++ [x1]) ++ [x2]) := ext_trans hext (ext_trans (Wit.ext_snoc' _ _) (Wit.ext_snoc' _ _))
  have hGk := (hK hG'' hEC.1 hEC.2).1
  refine ⟨H, C, WD, keepG ((Γ' ++ [x1]) ++ [x2]), hvH, hGk, fun o ho => (mem_keepG.mp ho).2, ?_⟩
  have hplm : ∀ a, PlCell Γ a → t.memory a = u.memory a := by
    intro a ha
    have hpr := plCell_prot ha
    have hib := prot_in_heap hC hord hL0 hpr
    refine hmod a ?_
    rintro (h | h)
    · exact prot_notW hord hL0 hpr h
    · exact h (Or.inl ⟨hib.1, hib.2⟩)
  have hnb : ∀ f, S2b si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh f →
      (∀ w n, f ≠ Fct.fbuf w n) ∧ (∀ w n, f ≠ Fct.bufok w n) := by
    intro f hf
    simp only [S2b] at hf
    rcases hf with h | h | h | h | h | h | h | h | h | h | h | h | h <;> subst h <;>
      exact ⟨fun _ _ h => (by cases h), fun _ _ h => (by cases h)⟩
  have hmem : ∀ f, S2b si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh f → ∀ a, f.reads a → t.memory a = u.memory a := by
    intro f hf a ha
    have hf' := hf
    simp only [S2b] at hf'
    rcases hf' with h | h | h | h | h | h | h | h | h | h | h | h | h <;> subst h <;>
      first
      | (simp only [Fct.reads] at ha; subst ha; exact hplm _ (hL _ hf).2)
      | (simp [Fct.reads] at ha)
  have hglo : ∀ g w ty, S2b si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh (Fct.gobj g w ty) → gword t g = gword u g :=
    fun g w ty h => gword_of_lookup (hgl g ((tidy_S2b si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh).1 g w ty h))
  have hglv : ∀ g w, S2b si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh (Fct.gval g w) → gword t g = gword u g :=
    fun g w h => gword_of_lookup (hgl g ((tidy_S2b si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh).2 g w h))
  have h2b : HoldsAll q' ((Γ' ++ [x1]) ++ [x2]) q' t (S2b si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh) :=
    holds_ext hext'' hnb hmem hglo hglv hL
  have hx1 : x1 ∈ (Γ' ++ [x1]) ++ [x2] := by simp [x1]
  have hx2 : x2 ∈ (Γ' ++ [x1]) ++ [x2] := by simp [x2]
  have hold : HoldsAll q' ((Γ' ++ [x1]) ++ [x2]) q' t (S2 si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh H C WD) := by
    intro f hf
    rcases hf with hb | rfl | rfl | rfl | rfl | rfl | rfl
    · exact h2b f hb
    · exact ⟨x1, hx1, rfl, rfl, le_rfl⟩
    · refine ⟨hEC'.ck, x1, hx1, by simp [x1, blockTys], 3, by show 8 * 3 + 8 ≤ 248; decide,
        blk_prot (Or.inl rfl) 3, by show H + BitVec.ofNat 64 24 = H + BitVec.ofNat 64 (8 * 3); rfl⟩
    · obtain ⟨x, hx, ht, h1, h2⟩ := hEC'.i.2.2
      have h20 : (BitVec.ofNat 64 20).toNat = 20 := by decide
      refine ⟨x, List.mem_append_left _ (List.mem_append_left _ hx), ht, h1, ?_⟩
      rw [h20] at h2
      exact h2
    · exact ⟨x2, hx2, rfl, rfl, by show 16 * nwd0.toNat ≤ nwd0.toNat * 16 + 16; omega⟩
    · exact AllocImpl.gword_of_lookup hEC'.gl
    · intro j hj
      have hb : ∀ k, k ≤ 2 * j + 1 → ∀ a, a = WD + BitVec.ofNat 64 (8 * k) → BCell guestC ((Γ' ++ [x1]) ++ [x2]) a := by
        intro k hk a ha
        refine ⟨x2, hx2, by simp [x2, blockTys], k, ?_, blk_prot (Or.inl rfl) k, ?_⟩
        · show 8 * k + 8 ≤ nwd0.toNat * 16 + 16
          omega
        · rw [ha]; rfl
      refine ⟨hb (2 * j) (by omega) _ ?_, hb (2 * j + 1) (by omega) _ ?_, ?_⟩
      · congr 2; omega
      · congr 2; omega
      · obtain ⟨x, hx, ht, h1, h2⟩ := hEC'.wc j hj
        exact Or.inr ⟨x, List.mem_append_left _ (List.mem_append_left _ hx), ht, h1, h2⟩
  exact fun f hf => holds_keepG (safe_S2 si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh H C WD f hf) (hold f hf)

end InitECandidate.Solver.MemSafe.Att
