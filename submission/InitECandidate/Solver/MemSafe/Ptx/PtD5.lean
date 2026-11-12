import InitECandidate.Solver.MemSafe.Ptx.PtD4

/-!
# F3e: `te_new` / `msg_new` (`hdecNew`): a fresh zeroed block, not yet a `Γ` object
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

variable {σ : Type}

/-- **A step of the typed heap that keeps the `prot` cells and the protected globals keeps the run.** -/
theorem ptRun_stepD {D : BitVec 64 → Option (BitVec 64)} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {Γ : Gam}
    {u t : State σ} {p : Ptrs} {Γ' : Gam} {p' : Ptrs} (h : PtRun D Γ0 s0 p0 Γ u p) (hs : StepD Γ p u Γ' p' t)
    (hkeep : ∀ a, ProtCell guestC Γ a → t.memory a = u.memory a)
    (hPG : ∀ g ∈ guestC.PG, t.globals.lookup g = u.globals.lookup g)
    (hgl : ∀ g, ptW.contains g = false → t.globals.lookup g = u.globals.lookup g) :
    PtRun D Γ0 s0 p0 Γ' t p' := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13⟩ := h
  refine ⟨h1, hs.hp', mono_trans h3 hs.mono, ext_trans h4 hs.ext, newFresh_trans h3 hs.mono h5 hs.nf, hs.hG',
    fun g hg hn => (hPG g hg).trans (h7 g hg hn), ?_, ?_, ?_, ?_, h12, fun g hg => (hgl g hg).trans (h13 g hg)⟩
  · intro a ha
    have hpc : ProtCell guestC Γ a := by
      obtain ⟨o, ho, k, hk, hp, e⟩ := protCell_ext (C := guestC) (ext_nst h4) ha
      exact ⟨o, (mem_nst.mp ho).1, k, hk, hp, e⟩
    have := hkeep a hpc
    exact ⟨fun hd => by rw [this]; exact (h8 a ha).1 hd, fun w hw => by unfold rd; rw [this]; exact (h8 a ha).2 w hw⟩
  · exact jrNZ_of_lookup (fun g hg => hPG g (by simp [Frames.jrGs] at hg; rcases hg with rfl | rfl <;> decide)) h9
  · obtain ⟨e, he, hs⟩ := h10
    exact ⟨e, by unfold gword at he ⊢; rw [hPG _ (by decide)]; exact he, hs⟩
  · obtain ⟨e, he, hs⟩ := h11
    exact ⟨e, by unfold gword at he ⊢; rw [hPG _ (by decide)]; exact he, hs⟩

/-- The cells the facts read are kept by a `NewRb` step. -/
theorem newr_mem_keep {N : Nat} {Γ : Gam} {p p0 : Ptrs} {u t : State σ} {v : ValueHOL 64}
    (h0 : p0.Ordered) (hord : p.Ordered) (hN : NewRb N Γ p u v t) {f : Fct}
    (hh : f.holds p0 Γ p u) {a : BitVec 64} (ha : f.reads a) : t.memory a = u.memory a := by
  obtain ⟨Γ', p', w, hv, hs, hfb, hz, hkeep, hmem, hPG, -, -⟩ := hN
  by_cases hcv : ∃ a' v', f = Fct.cellv a' v'
  · obtain ⟨a', v', rfl⟩ := hcv
    obtain rfl : a = a' := ha
    obtain ⟨-, o, ho, hst, k, hk, hp, rfl⟩ := hh
    obtain ⟨q, hq, -, hL, -⟩ := hs.hG
    obtain rfl : q = p := Option.some.inj (hq.symm.trans hs.hp)
    exact hkeep _ ⟨o, ho, k, hk, hp, rfl⟩
  · obtain ⟨hn, hal⟩ := Fct.reads_alloc hh h0 hord (fun a v h => hcv ⟨a, v, h⟩) ha
    exact hmem a hn hal

/-- **`var rn = f(); k`** for `f = te_new` / `msg_new`: a fresh zeroed block of `N` bytes. -/
theorem hdecNew {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {f rn : MlS} {N : Nat} {k : ProgHOL 64} (hQT : ResIns rn QT)
    (hf : FunSpec σ guestCtx f (fun vs s r t => ∀ v, r = .returned v → NewR N s v t))
    (hfin : ptAllNames.contains f = true) (hN8 : N % 8 = 0) (hN0 : 0 < N) (hNb : N < 2 ^ 20)
    (ZC : List Nat) (hZ : ∀ o ∈ ZC, o % 8 = 0 ∧ o + 8 ≤ N)
    (hGl : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false)
    (hk : ∀ w : BitVec 64, Hoare σ guestCtx (PA E (En.set rn (.val (.word w)))
      (addF S (Fct.fbuf w N :: Fct.prop (w.toNat % 8 = 0 ∧ heapBase ≤ w.toNat ∧ w.toNat + N ≤ heapEnd) ::
        ZC.map (fun o => Fct.memw (w + BitVec.ofNat 64 o) 0)))) k QT) :
    Hoare σ guestCtx (PA E En S) (.decCall rn .one f [] k) QT := by
  refine hdecCallK hQT (hf.and (funSpec_pt_gw_all guestCtx_code hfin)) ?_
  intro s hs hpa vs hvs callee v st ⟨hR, hgl⟩ hst hsh
  obtain ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩ := hpa
  have hre : PtRun D E.Γ0 E.s0 E.p0 Γ (callEntryStateHOLFinite s callee) p := ptRun_loc hr callee (s.clock - 1)
  have hLe : HoldsAll E.p0 Γ p (callEntryStateHOLFinite s callee) S := holdsAll_loc hL callee (s.clock - 1)
  have hGe := ptRun_G hre
  have hN := hR v rfl Γ p hGe (ptRun_ptrs hre)
  obtain ⟨Γ', p', w, hv, hstep, hfb, hz, hkeep, hmem, hPG, hlv1, hlv2⟩ := id hN
  subst hv
  have hgl' : ∀ g, ptW.contains g = false → st.globals.lookup g = (callEntryStateHOLFinite s callee).globals.lookup g :=
    fun g hg => hgl g (cW_of_ptW hg)
  have hrun := ptRun_stepD hre hstep hkeep hPG hgl'
  have hord0 := ptRun_ord0 hr
  have hordp := ptRun_ord hre
  have hord' := ordered_of_G hstep.hG' hstep.hp'
  have hgl2 : ∀ g ty, S (Fct.gobj g ty) → gword st g = gword (callEntryStateHOLFinite s callee) g := by
    intro g ty hg
    have := hgl g (hGl g ty hg)
    unfold gword
    rw [this]
  have hL' : HoldsAll E.p0 Γ' p' st S :=
    holds_step hstep hord0 (fun f hf a ha => newr_mem_keep hord0 hordp hN (hLe f hf) ha) hgl2 hLe
  have hL'' := holdsAll_loc hL' s.locals st.clock
  have hw8 := hfb.1
  have hbytes : ∀ a : BitVec 64, Overlap w.toNat N a → Fresh E.p0 p' a ∧ ¬ InObj Γ' a.toNat :=
    fun a ha => ⟨fresh_anchor (ptRun_mono hr) (hfb.2 a ha).1, (hfb.2 a ha).2⟩
  have hfb0 : FreshBuf Γ' E.p0 p' w N := ⟨hw8, hbytes⟩
  have hwb : heapBase ≤ w.toNat ∧ w.toNat + N ≤ heapEnd := ⟨hlv1, by have := hord'.2.1; omega⟩
  have hb64 : heapEnd < 2 ^ 64 := by unfold heapEnd; norm_num
  refine hoare_pre (hk w) ?_
  intro t _ ht
  subst ht
  refine ⟨⟨D, Γ', p', ptRun_set (ptRun_loc hrun s.locals st.clock) rn _, hD, ?_⟩, lke_set (lke_restore hlk) _ _⟩
  intro f hf
  rcases hf with hf | hf
  · have := hL'' f hf
    cases f <;> first | exact this | simpa [Fct.holds, gword, rd] using this
  · rcases List.mem_cons.mp hf with rfl | hf
    · exact hfb0
    rcases List.mem_cons.mp hf with rfl | hf
    · exact ⟨hw8, hwb.1, hwb.2⟩
    obtain ⟨o, ho, rfl⟩ := List.mem_map.mp hf
    obtain ⟨ho8, hoN⟩ := hZ o ho
    have hn : (w + BitVec.ofNat 64 o).toNat = w.toNat + o := toNat_add_ofNat (by omega)
    have hov : Overlap w.toNat N (w + BitVec.ofNat 64 o) := ⟨by rw [hn]; omega, by rw [hn]; omega, by rw [hn]; omega⟩
    refine ⟨?_, (hbytes _ hov).2, (hbytes _ hov).1⟩
    have := hz o ho8 (by omega)
    show rd st.memory (w + BitVec.ofNat 64 o) = 0
    unfold rd; rw [this]

end InitECandidate.Solver.MemSafe.Ptx
