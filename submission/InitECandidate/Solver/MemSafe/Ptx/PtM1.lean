import InitECandidate.Solver.MemSafe.Ptx.PtL15

/-!
# F3e: stores into `te` with state-dependent disjointness (`hn_stTeS`), `te_hrl`
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

/-- **A store of `k` words into a fresh block, disjointness from the reading facts shown in the state.** -/
theorem hn_stFBs {E : PtE σ} {En : Env} {S : FS} {a e : ExpHOL 64} {w : BitVec 64} {N off k : Nat}
    (hfb : S (Fct.fbuf w N)) (hprop : S (Fct.prop (BlkP w N)))
    (ha : ∀ s : State σ, PA E En S s → EvI s a (.val (.word (w + BitVec.ofNat 64 off))))
    (hlen : ∀ s : State σ, PA E En S s → ∀ v, ev s e = some v → (flattenHOL v).length = k)
    (hoff : off % 8 = 0) (hk : off + 8 * k ≤ N) {rl : List Fct} (hrd : RdIn S rl)
    (hrl : ∀ s : State σ, PA E En S s → ∀ f ∈ rl, ∀ y, f.reads y → ∀ j, j < k →
      y ≠ w + BitVec.ofNat 64 (off + 8 * j)) :
    HN (PA E En S) (.store a e) (PA E En S) := by
  refine hn_stF ?_
  intro s hpa D Γ p hr hL w' v hw hv
  have hw' : w' = w + BitVec.ofNat 64 off := by
    have := ha s hpa _ hw
    simpa using this
  have hl := hlen s hpa v hv
  subst hw'
  have hcell : ∀ j, j < k → w + BitVec.ofNat 64 off + BitVec.ofNat 64 (8 * j) = w + BitVec.ofNat 64 (off + 8 * j) := by
    intro j hj
    rw [BitVec.add_assoc, ← BitVec.ofNat_add]
  refine ⟨fun j hj => ?_, fun f hf y hy j hj => ?_⟩
  · rw [hl] at hj
    rw [hcell j hj]
    exact (fbuf_cellS hL hfb hprop (by omega) (by omega)).2.1
  · rw [hl] at hj
    rw [hcell j hj]
    exact rd_disj hr hL hrd (fbuf_cellS hL hfb hprop (by omega) (by omega)).2.1
      (fun f' hf' y' hy' => hrl s hpa f' hf' y' hy' j hj) f hf y hy

theorem hn_stTeS {E : PtE σ} {En : Env} {S : FS} {x : MlS} {wt : BitVec 64} {N off k : Nat} {e : ExpHOL 64}
    (hx : En x = some (.val (.word wt))) (hfb : S (Fct.fbuf wt N)) (hprop : S (Fct.prop (BlkP wt N)))
    (hlen : ∀ s : State σ, PA E En S s → ∀ v, ev s e = some v → (flattenHOL v).length = k)
    (hoff : off % 8 = 0) (hk : off + 8 * k ≤ N) {rl : List Fct} (hrd : RdIn S rl)
    (hrl : ∀ s : State σ, PA E En S s → ∀ f ∈ rl, ∀ y, f.reads y → ∀ j, j < k →
      y ≠ wt + BitVec.ofNat 64 (off + 8 * j)) :
    HN (PA E En S) (.store (.op .add [lv x, cw off]) e) (PA E En S) :=
  hn_stFBs hfb hprop (fun s hpa => evI_add (evI_lv (hpa.2 _ _ hx)) (evI_cw s off)) hlen hoff hk hrd hrl

theorem te_hrl {E : PtE σ} {En : Env} {S : FS} {wt wa w : BitVec 64} {nbl c off k : Nat}
    (hord : S (Fct.prop (wt.toNat + 200 ≤ wa.toNat))) (hpt : S (Fct.prop (BlkP wt 200)))
    (hpa' : S (Fct.prop (BlkP wa nbl))) (hc : 8 * c ≤ nbl) (hcpos : 0 < c) (hk : off + 8 * k ≤ 200) (h0 : 0 < off) :
    ∀ s : State σ, PA E En S s → ∀ f ∈ [Fct.arrbuf wa nbl c 20, Fct.arrbuf wa nbl 1 20, Fct.memw (wt + BitVec.ofNat 64 0) w],
      ∀ y, f.reads y → ∀ j, j < k → y ≠ wt + BitVec.ofNat 64 (off + 8 * j) := by
  intro s hpa f hf y hy j hj
  obtain ⟨_, _, hwt⟩ := pa_prop hpa hpt
  obtain ⟨_, _, hwa⟩ := pa_prop hpa hpa'
  have hor := pa_prop hpa hord
  rcases List.mem_cons.mp hf with rfl | hf
  · obtain ⟨j', hj', rfl⟩ := hy
    exact te_arr_ne hor hwt hwa (by omega) (by omega)
  rcases List.mem_cons.mp hf with rfl | hf
  · obtain ⟨j', hj', rfl⟩ := hy
    have : j' = 0 := by omega
    subst this
    exact te_arr_ne hor hwt hwa (by omega) (by omega)
  · rw [List.mem_singleton] at hf; subst hf
    simp only [Fct.reads] at hy; subst hy
    exact bv_off_ne (by omega) (by omega) (by omega)

end InitECandidate.Solver.MemSafe.Ptx
