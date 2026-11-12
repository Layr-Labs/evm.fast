import InitECandidate.Solver.MemSafe.Ptx.PtD9

/-!
# F3e: chunk 4b (stores into `te`, `ptS39` to `ptS46`)
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

/-- `st x + off, e` with `x` a tracked local holding a fresh block. -/
theorem hn_stTe {E : PtE σ} {En : Env} {S : FS} {x : MlS} {wt : BitVec 64} {N off k : Nat} {e : ExpHOL 64}
    (hx : En x = some (.val (.word wt))) (hfb : S (Fct.fbuf wt N)) (hprop : S (Fct.prop (BlkP wt N)))
    (hlen : ∀ s : State σ, PA E En S s → ∀ v, ev s e = some v → (flattenHOL v).length = k)
    (hoff : off % 8 = 0) (hk : off + 8 * k ≤ N) {rl : List Fct} (hrd : RdIn S rl)
    (hrl : ∀ f ∈ rl, ∀ y, f.reads y → ∀ j, j < k → y ≠ wt + BitVec.ofNat 64 (off + 8 * j)) :
    HN (PA E En S) (.store (.op .add [lv x, cw off]) e) (PA E En S) :=
  hn_stFB hfb hprop (fun s hpa => evI_add (evI_lv (hpa.2 _ _ hx)) (evI_cw s off)) hlen hoff hk hrd hrl

/-- The single-word variant recording the cell. -/
theorem hn_stTeM {E : PtE σ} {En : Env} {S : FS} {x : MlS} {wt x' : BitVec 64} {N off : Nat} {e : ExpHOL 64}
    (hx : En x = some (.val (.word wt))) (hfb : S (Fct.fbuf wt N)) (hprop : S (Fct.prop (BlkP wt N)))
    (he : ∀ s : State σ, PA E En S s → EvI s e (.val (.word x')))
    (hoff : off % 8 = 0) (hk : off + 8 ≤ N) {rl : List Fct} (hrd : RdIn S rl)
    (hrl : ∀ f ∈ rl, ∀ y, f.reads y → y ≠ wt + BitVec.ofNat 64 off) :
    HN (PA E En S) (.store (.op .add [lv x, cw off]) e) (PA E En (addF S [Fct.memw (wt + BitVec.ofNat 64 off) x'])) :=
  hn_stFBm hfb hprop (fun s hpa => evI_add (evI_lv (hpa.2 _ _ hx)) (evI_cw s off)) he hoff hk hrd hrl

theorem hlen_lv_wv {E : PtE σ} {En : Env} {S : FS} {x : MlS} {pr : List (BitVec 64)}
    (hx : En x = some (wv pr)) (hl : pr.length = 4) :
    ∀ s : State σ, PA E En S s → ∀ v, ev s (lv x) = some v → (flattenHOL v).length = 4 := by
  intro s hpa v hv
  have := evI_lv (hpa.2 _ _ hx) v hv
  subst this
  rw [len_wv, hl]

theorem hlen_lv_w {E : PtE σ} {En : Env} {S : FS} {x : MlS} {y : BitVec 64}
    (hx : En x = some (.val (.word y))) :
    ∀ s : State σ, PA E En S s → ∀ v, ev s (lv x) = some v → (flattenHOL v).length = 1 := by
  intro s hpa v hv
  have := evI_lv (hpa.2 _ _ hx) v hv
  subst this
  exact len_word y


/-- `te_new`: a fresh unadopted block, with the facts about it. -/
theorem pt_c4a {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)} {w : BitVec 64}
    {ex : List (MlS × ValueHOL 64)} {fs : List Fct} (hQT : LocIns QT) (C : CyB E En S rp rl buf n CV w ex fs [])
    (hfr : nm "te" ∉ ex.map Prod.fst)
    (hk : ∀ (En' : Env) (S' : FS) (wt : BitVec 64),
      CyB E En' S' rp rl buf n CV w ((nm "te", .val (.word wt)) :: ex)
        (Fct.memw (wt + BitVec.ofNat 64 152) 0 :: Fct.memw (wt + BitVec.ofNat 64 144) 0 ::
          Fct.prop (BlkP wt 200) :: Fct.fbuf wt 200 :: fs)
        [Fct.memw (wt + BitVec.ofNat 64 144) 0, Fct.memw (wt + BitVec.ofNat 64 152) 0] →
      Hoare σ guestCtx (PA E En' S') ptS39 QT) :
    Hoare σ guestCtx (PA E En S) ptS38 QT := by
  obtain ⟨C0, hex, hfx, hrd0⟩ := C
  unfold ptS38
  refine hdecNew (locIns_resIns hQT _) tn_spec tn_fin (by norm_num) (by norm_num) (by norm_num) [144, 152]
    (by intro o ho; simp at ho; rcases ho with rfl | rfl <;> norm_num)
    (fun g ty h => (C0.gl g ty h).1) ?_
  intro wt
  have C1 := cy_setF C0 (x := nm "te") (by decide) (by decide) (.val (.word wt))
    [Fct.fbuf wt 200, Fct.prop (BlkP wt 200), Fct.memw (wt + BitVec.ofNat 64 144) 0,
      Fct.memw (wt + BitVec.ofNat 64 152) 0]
    (by intro X hX; simp at hX; rcases hX with rfl | rfl | rfl | rfl <;> simp)
  have hex1 := ex_cons hex (x := nm "te") hfr (.val (.word wt))
  have hfx1 : FXs (addF S [Fct.fbuf wt 200, Fct.prop (BlkP wt 200), Fct.memw (wt + BitVec.ofNat 64 144) 0,
      Fct.memw (wt + BitVec.ofNat 64 152) 0])
      (Fct.memw (wt + BitVec.ofNat 64 152) 0 :: Fct.memw (wt + BitVec.ofNat 64 144) 0 ::
        Fct.prop (BlkP wt 200) :: Fct.fbuf wt 200 :: fs) := by
    intro f hf
    rcases List.mem_cons.mp hf with rfl | hf
    · exact Or.inr (by simp)
    rcases List.mem_cons.mp hf with rfl | hf
    · exact Or.inr (by simp)
    rcases List.mem_cons.mp hf with rfl | hf
    · exact Or.inr (by simp)
    rcases List.mem_cons.mp hf with rfl | hf
    · exact Or.inr (by simp)
    · exact Or.inl (hfx f hf)
  exact hk _ _ wt ⟨C1, hex1, hfx1, rdin_addF2 hrd0 _ (fun f hf => absurd hf (by simp)) (by
    intro X hX; simp at hX
    rcases hX with rfl | rfl | rfl | rfl
    · exact Or.inl (by simp [Fct.reads])
    · exact Or.inl (by simp [Fct.reads])
    · exact Or.inr (by simp)
    · exact Or.inr (by simp))⟩

end InitECandidate.Solver.MemSafe.Ptx
