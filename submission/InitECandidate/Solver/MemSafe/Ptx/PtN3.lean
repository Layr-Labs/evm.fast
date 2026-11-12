import InitECandidate.Solver.MemSafe.Ptx.PtN2

/-!
# F3e: `hdecNewP` (`msg_new` ordered after earlier blocks)
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

/-- **`var rn = f(); k`** for `f = te_new` / `msg_new`: a fresh zeroed block of `N` bytes. -/
theorem hdecNewP {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {f rn : MlS} {N : Nat} {k : ProgHOL 64} (hQT : ResIns rn QT)
    (hf : FunSpec σ guestCtx f (fun vs s r t => ∀ v, r = .returned v → NewR N s v t))
    (hfin : ptAllNames.contains f = true) (hN8 : N % 8 = 0) (hN0 : 0 < N) (hNb : N < 2 ^ 20)
    (ZC : List Nat) (hZ : ∀ o ∈ ZC, o % 8 = 0 ∧ o + 8 ≤ N)
    (hGl : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false)
    (PB : List (BitVec 64 × Nat))
    (hPB : ∀ b ∈ PB, S (Fct.fbuf b.1 b.2) ∧ S (Fct.prop (BlkP b.1 b.2)) ∧ b.2 % 8 = 0 ∧ 0 < b.2)
    (hk : ∀ w : BitVec 64, Hoare σ guestCtx (PA E (En.set rn (.val (.word w)))
      (addF S (Fct.fbuf w N :: Fct.prop (w.toNat % 8 = 0 ∧ heapBase ≤ w.toNat ∧ w.toNat + N ≤ heapEnd) ::
        (ZC.map (fun o => Fct.memw (w + BitVec.ofNat 64 o) 0) ++
          PB.map (fun b => Fct.prop (b.1.toNat + b.2 ≤ w.toNat)))))) k QT) :
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
    rcases List.mem_append.mp hf with hf | hf
    swap
    · obtain ⟨b, hb, rfl⟩ := List.mem_map.mp hf
      obtain ⟨hb1, hb2, hb3, hb4⟩ := hPB b hb
      have hend := fbuf_end_le hLe hord0 hordp hb1 hb2 hb3 hb4
      have hf0 := (hfb.2 w ⟨hw8, by omega, by omega⟩).1
      obtain ⟨o1, o2, o3, o4, o5, o6, o7, o8⟩ := hordp
      obtain ⟨q1, q2, q3, q4, q5, q6, q7, q8⟩ := hord'
      have hpw : p.hp ≤ w.toNat := by
        unfold Fresh at hf0
        rcases hf0 with ⟨h1, -⟩ | ⟨h1, h2⟩ | ⟨h1, h2⟩
        · exact h1
        · unfold heapEnd at *; omega
        · unfold heapEnd at *; omega
      show b.1.toNat + b.2 ≤ w.toNat
      omega
    obtain ⟨o, ho, rfl⟩ := List.mem_map.mp hf
    obtain ⟨ho8, hoN⟩ := hZ o ho
    have hn : (w + BitVec.ofNat 64 o).toNat = w.toNat + o := toNat_add_ofNat (by omega)
    have hov : Overlap w.toNat N (w + BitVec.ofNat 64 o) := ⟨by rw [hn]; omega, by rw [hn]; omega, by rw [hn]; omega⟩
    refine ⟨?_, (hbytes _ hov).2, (hbytes _ hov).1⟩
    have := hz o ho8 (by omega)
    show rd st.memory (w + BitVec.ofNat 64 o) = 0
    unfold rd; rw [this]


end InitECandidate.Solver.MemSafe.Ptx
