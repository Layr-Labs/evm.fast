import InitECandidate.Solver.MemSafe.Ptx.Adopt
import InitECandidate.Solver.MemSafe.Entry2.Final

/-!
# F3: kit lemmas shared by the walks

* `runT_adopt`: adopting a block that was fresh over a run keeps `RunT`.
* `foPre_runT`: `FoPre` survives a `RunT` that keeps the non-state `prot` cells.
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
open InitECandidate.Solver.MemSafe.Struct

variable {σ : Type}

theorem runT_adopt {C : Cfg} {H : Hooks σ} {gw : List MlS} {Γ Γ' : Gam} {s t : State σ} {p p' : Ptrs}
    {x : Obj} (h : RunT C H gw Γ s Γ' t p p') (hG : G C H (Γ' ++ [x]) t)
    (hfr : ∀ a : BitVec 64, x.lo ≤ a.toNat → a.toNat < x.hi → Fresh p p' a) :
    RunT C H gw Γ s (Γ' ++ [x]) t p p' := by
  obtain ⟨h1, h2, h3, h4, h5, -, h7, h8⟩ := h
  refine ⟨h1, h2, h3, ext_trans h4 (ext_append Γ' x), ?_, hG, h7, h8⟩
  intro o ho a ha1 ha2
  rcases List.mem_append.mp ho with ho | ho
  · exact h5 o ho a ha1 ha2
  · simp only [List.mem_singleton] at ho
    subst ho
    exact Or.inr (hfr a ha1 ha2)

/-- A run from `s'` is a run from `s` when the two agree on globals and memory. -/
theorem runT_src {C : Cfg} {H : Hooks σ} {gw : List MlS} {Γ Γ' : Gam} {s s' t : State σ} {p p' : Ptrs}
    (h : RunT C H gw Γ s' Γ' t p p') (hg : s'.globals = s.globals) (hm : s'.memory = s.memory) :
    RunT C H gw Γ s Γ' t p p' := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h8, hb⟩ := h
  refine ⟨by rw [← h1]; unfold ptrsOf gword; rw [hg], h2, h3, h4, h5, h6,
    fun g hg' hgw => by rw [← hg]; exact h8 g hg' hgw, ?_⟩
  exact bkeep_congr hm.symm rfl hb

theorem ordered_of_G {Γ : Gam} {s : State σ} {p : Ptrs} (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ s)
    (hp : ptrsOf s = some p) : p.Ordered := by
  obtain ⟨q, hq, hord, -⟩ := hG
  rw [hq] at hp; cases hp; exact hord

theorem layout_of_G {Γ : Gam} {s : State σ} {p : Ptrs} (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ s)
    (hp : ptrsOf s = some p) : Layout guestC p Γ := by
  obtain ⟨q, hq, -, hL, -⟩ := hG
  rw [hq] at hp; cases hp; exact hL

theorem alloc_of_fresh {p0 p : Ptrs} (h0 : p0.Ordered) (h : p.Ordered) {a : BitVec 64}
    (hf : Fresh p0 p a) : p.Allocated a.toNat := by
  unfold Ptrs.Ordered at h0 h
  unfold Fresh at hf
  unfold Ptrs.Allocated
  omega

/-- A fresh block stays fresh and outside `Γ` along a run. -/
theorem freshBuf_runT {C : Cfg} {H : Hooks σ} {gw : List MlS} {Γ Γ' : Gam} {s t : State σ}
    {p0 p p' : Ptrs} (h0 : p0.Ordered) (hr : RunT C H gw Γ s Γ' t p p') {w : BitVec 64} {n : Nat}
    (hf : FreshBuf Γ p0 p w n) (hp : p.Ordered) : FreshBuf Γ' p0 p' w n := by
  obtain ⟨-, hp', hm, -, hnf, hG', -⟩ := hr
  obtain ⟨q, hq, hord', -⟩ := hG'
  have hq' : p' = q := by
    have := hp'; rw [hq] at this; exact (Option.some.inj this).symm
  subst hq'
  refine ⟨hf.1, fun a ha => ⟨fresh_of_mono hm (hf.2 a ha).1, ?_⟩⟩
  exact notInObj_after hp hord' hm hnf (hf.2 a ha).2 (alloc_of_fresh h0 hp (hf.2 a ha).1)

theorem foPre_runT {M : Nat} {msg : BitVec 64} {gw : List MlS} {Γ Γ' : Gam} {s t : State σ}
    {p p' : Ptrs} (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ s) (hfo : FoPre M msg Γ s)
    (hgw : nmEv ∉ gw ∧ nmCC ∉ gw) (hJo : JrOut gw)
    (hrun : RunT guestC (Hooks.guestHooksR (σ := σ)) gw Γ s Γ' t p p')
    (hpk : ProtKeep guestC (nst guestSt Γ) s t) : FoPre M msg Γ' t := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  obtain ⟨⟨⟨M0, hM0⟩, hB⟩, hnp, ⟨e0, he0⟩, ⟨c0, hc0⟩, hJ, hgas⟩ := hfo
  have hext := hrun.2.2.2.1
  have hmk := msgKeep_of_protKeepS hpk
  obtain ⟨hMΓ, hMb, hMt, hMs⟩ := hM0
  have hmt : M0.ty ∈ msgTys := by rcases hMt with h' | h' <;> rw [h'] <;> decide
  have hpa := msg_addrProt hMt
  have hpg5 : (guestC.ty M0.ty).slot 5 = .prot := by
    rcases hMt with h' | h' <;> rw [h']
    · exact msg_gasProt.1
    · exact msg_gasProt.2
  have hg40 : fld t.memory msg 40 = fld s.memory msg 40 := by
    have := hmk M0 hMΓ hmt 5 (by unfold Obj.HasSlot; omega) hpg5
    unfold fld; rw [← hMb]; exact this
  have hev : gword t nmEv = gword s nmEv := by
    unfold gword; rw [hrun.2.2.2.2.2.2.1 _ hF.pgEv hgw.1]
  have hcc : gword t nmCC = gword s nmCC := by
    unfold gword; rw [hrun.2.2.2.2.2.2.1 _ hF.pgCC hgw.2]
  refine ⟨⟨?_, ?_⟩, newPreG_keepS hnp hpk hext, ⟨e0, hev.trans he0.1, he0.2⟩,
    ⟨c0, hcc.trans hc0.1, hc0.2⟩, jrNZ_runT (by decide) hJo hrun hJ, by rw [hg40]; exact hgas⟩
  · obtain ⟨M', hM', -⟩ := msgObj_ext hext ⟨hMΓ, hMb, hMt, hMs⟩
    exact ⟨M', hM'⟩
  · intro p'' hp'' k hk'
    obtain rfl := ptrs_some hrun.2.1 hp''
    have hkeep : fld t.memory msg k = fld s.memory msg k := by
      simp only [msgXOffs, List.mem_cons, List.mem_nil_iff, or_false] at hk'
      rcases hk' with rfl | rfl
      · have := hmk M0 hMΓ hmt 2 (by unfold Obj.HasSlot; omega) hpa.1
        unfold fld; rw [← hMb]; exact this
      · have := hmk M0 hMΓ hmt 4 (by unfold Obj.HasSlot; omega) hpa.2
        unfold fld; rw [← hMb]; exact this
    rw [hkeep]
    exact bufOK_runT hG hrun (hB p hrun.1 k hk')

end InitECandidate.Solver.MemSafe.Ptx
