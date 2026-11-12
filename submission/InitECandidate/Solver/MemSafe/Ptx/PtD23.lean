import InitECandidate.Solver.MemSafe.Ptx.PtD22

/-!
# F3e: chunk 6b (`al_keys = alloc(nkeys * 52 + 8)`, `k = 0`, `i = 0`; `ptS55` to `ptS59`)
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

/-- The size of the `al_keys` object: `nkeys * 52 + 8` rounded up to a multiple of 8. -/
def akN (nk : Nat) : Nat := (52 * nk + 8) + (8 - (52 * nk + 8) % 8) % 8

theorem akN_ge (nk : Nat) : 52 * nk + 8 ≤ akN nk := by unfold akN; omega
theorem akN_mod (nk : Nat) : akN nk % 8 = 0 := by unfold akN; omega

theorem nk_n {nkv : BitVec 64} (h : nkv.toNat < 2 ^ 58) :
    (nkv * BitVec.ofNat 64 52 + BitVec.ofNat 64 8).toNat = 52 * nkv.toNat + 8 := by
  rw [BitVec.toNat_add, BitVec.toNat_mul]
  simp only [BitVec.toNat_ofNat]
  rw [Nat.mod_eq_of_lt (a := 52) (by norm_num), Nat.mod_eq_of_lt (a := 8) (by norm_num),
    Nat.mod_eq_of_lt (a := nkv.toNat * 52) (by omega), Nat.mod_eq_of_lt (a := nkv.toNat * 52 + 8) (by omega)]
  omega


theorem tval_reg : (Types.guestC.ty tVAL).region = .heap := by decide
theorem tval_min : (Types.guestC.ty tVAL).minSz = 8 := by decide

/-- Chunk 6b: `al_keys`, `k = 0`, `i = 0`. -/
theorem pt_c6b {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)} {w : BitVec 64}
    {ex : List (MlS × ValueHOL 64)} {rest : List (MlS × ValueHOL 64)} {fs rdl : List Fct} {iv0 nkv : BitVec 64}
    (hQT : LocIns QT) (hnkb : nkv.toNat < 2 ^ 58)
    (C : CyB E En S rp rl buf n CV w ((nm "i", .val (.word iv0)) :: rest) fs rdl)
    (hnk : (nm "nkeys", (.val (.word nkv) : ValueHOL 64)) ∈ rest)
    (hfa : nm "al_keys" ∉ ((nm "i", (.val (.word iv0) : ValueHOL 64)) :: rest).map Prod.fst)
    (hfk : nm "k" ∉ ((nm "i", (.val (.word iv0) : ValueHOL 64)) :: rest).map Prod.fst)
    (hfi : nm "i" ∉ rest.map Prod.fst)
    (hk : ∀ (En' : Env) (S' : FS) (ak : BitVec 64),
      CyB E En' S' rp rl buf n CV w
        ((nm "i", .val (.word 0)) :: (nm "k", .val (.word 0)) :: (nm "al_keys", .val (.word ak)) :: rest)
        (Fct.prop (ak.toNat % 8 = 0 ∧ heapBase ≤ ak.toNat ∧ ak.toNat + akN nkv.toNat ≤ heapEnd) ::
          Fct.bufok0 ak (akN nkv.toNat) :: Fct.obj ak tVAL (akN nkv.toNat) :: fs) rdl →
      Hoare σ guestCtx (PA E En' S') ptS59 QT) :
    Hoare σ guestCtx (PA E En S) ptS55 QT := by
  obtain ⟨C0, hex, hfx, hrd⟩ := C
  have hnkl : En (nm "nkeys") = some (.val (.word nkv)) :=
    ex_get hex (List.mem_cons_of_mem _ hnk)
  have hnn := nk_n hnkb
  unfold ptS55
  refine hdecAllocR (n := nkv * BitVec.ofNat 64 52 + BitVec.ofNat 64 8) (ty := tVAL) (locIns_resIns hQT _)
    (fun s hpa => evI_add (evI_mul (evI_lv (hpa.2 _ _ hnkl)) (evI_cw s 52)) (evI_cw s 8))
    (fun g ty h => C0.gl g ty h) plain_tVAL' tags_tVAL tval_reg tval_slot (akN nkv.toNat)
    (by rw [hnn]; unfold akN; rfl) (by rw [tval_min]; exact le_trans (by omega) (akN_ge _)) (by rw [hnn]; omega) ?_
  intro ak
  have C1 := cy_setF C0 (x := nm "al_keys") (by decide) (by decide) (.val (.word ak))
    [Fct.obj ak tVAL (akN nkv.toNat), Fct.bufok0 ak (akN nkv.toNat),
      Fct.prop (ak.toNat % 8 = 0 ∧ heapBase ≤ ak.toNat ∧ ak.toNat + akN nkv.toNat ≤ heapEnd)]
    (by intro X hX; simp at hX; rcases hX with rfl | rfl | rfl <;> simp)
  unfold ptS57
  refine hdecT (w := 0) (locIns_resIns hQT _) (fun s _ => evI_cw s 0) ?_
  have C2 := cy_set C1 (x := nm "k") (by decide) (by decide) (.val (.word 0))
  unfold ptS58
  have hi1 : ((En.set (nm "al_keys") (.val (.word ak))).set (nm "k") (.val (.word 0))) (nm "i") = some (.val (.word iv0)) := by
    rw [env_set_ne _ _ (by decide), env_set_ne _ _ (by decide)]
    exact ex_get hex (List.mem_cons_self ..)
  refine hseqN (hassignT (n := nm "i") (w' := 0) ⟨_, hi1⟩ (fun s _ v hv => evI_cw s 0 v hv)) ?_
  have C3 := cy_set C2 (x := nm "i") (by decide) (by decide) (.val (.word 0))
  refine hk _ _ ak ⟨C3, ?_, ?_, rdin_nr hrd (L := [Fct.obj ak tVAL (akN nkv.toNat), Fct.bufok0 ak (akN nkv.toNat),
      Fct.prop (ak.toNat % 8 = 0 ∧ heapBase ≤ ak.toNat ∧ ak.toNat + akN nkv.toNat ≤ heapEnd)])
      (by intro X hX; simp at hX; rcases hX with rfl | rfl | rfl <;> simp [Fct.reads])⟩
  · intro p hp
    rcases List.mem_cons.mp hp with rfl | hp
    · exact env_set_self _ _ _
    rcases List.mem_cons.mp hp with rfl | hp
    · rw [env_set_ne _ _ (show nm "k" ≠ nm "i" by decide)]; exact env_set_self _ _ _
    rcases List.mem_cons.mp hp with rfl | hp
    · rw [env_set_ne _ _ (show nm "al_keys" ≠ nm "i" by decide), env_set_ne _ _ (show nm "al_keys" ≠ nm "k" by decide)]
      exact env_set_self _ _ _
    · have h1 : p.1 ≠ nm "i" := fun e => hfi (List.mem_map.mpr ⟨p, hp, e⟩)
      have h2 : p.1 ≠ nm "k" := fun e => hfk (List.mem_map.mpr ⟨p, List.mem_cons_of_mem _ hp, e⟩)
      have h3 : p.1 ≠ nm "al_keys" := fun e => hfa (List.mem_map.mpr ⟨p, List.mem_cons_of_mem _ hp, e⟩)
      rw [env_set_ne _ _ h1, env_set_ne _ _ h2, env_set_ne _ _ h3]
      exact hex p (List.mem_cons_of_mem _ hp)
  · intro f hf
    rcases List.mem_cons.mp hf with rfl | hf
    · exact Or.inr (by simp)
    rcases List.mem_cons.mp hf with rfl | hf
    · exact Or.inr (by simp)
    rcases List.mem_cons.mp hf with rfl | hf
    · exact Or.inr (by simp)
    · exact Or.inl (hfx f hf)

end InitECandidate.Solver.MemSafe.Ptx
