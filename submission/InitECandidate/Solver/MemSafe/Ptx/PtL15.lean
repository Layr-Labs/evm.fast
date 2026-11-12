import InitECandidate.Solver.MemSafe.Ptx.PtL14

/-!
# F3e: chunk 7 (loop 2 as a context transformer; `ptS59`)
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

theorem i2_clk {E : PtE σ} {En0 : Env} {S : FS} {nv : BitVec 64} (s : State σ) (h : I2 E En0 S nv s) :
    I2 E En0 S nv (decClockHOLFinite s) := by
  obtain ⟨iv, kv, h1, h2, hpa⟩ := h
  exact ⟨iv, kv, h1, h2, pa_decClock hpa⟩

theorem le2_zero_same {En : Env} (h1 : En (nm "k") = some (.val (.word 0))) (h2 : En (nm "i") = some (.val (.word 0))) :
    LE2 En 0 0 = En := by
  unfold LE2
  rw [env_set_same h1, env_set_same h2]

/-- **Loop 2** (`ptS61`). -/
theorem pt_loop2 {E : PtE σ} {En0 : Env} {S : FS} {ak nv nkv w : BitVec 64} {rp rl : BitVec 64} {buf n : Nat}
    {CV : List (BitVec 64)} (hP : PtPreX E) (K : L2C E En0 S ak nv nkv w rp rl buf n CV) :
    Hoare σ guestCtx (PA E (LE2 En0 0 0) S) ptS61
      (fun r t => r = none ∧ PA E (LE2 En0 nv nkv) S t) := by
  have hnvb := nalOK_lt hP.toPtPre K.hnv
  have e_nal : ∀ iv kv : BitVec 64, LE2 En0 iv kv (nm "nal") = some (.val (.word nv)) := by
    intro iv kv; unfold LE2; simp (config := {decide := true}) [Env.set]; exact K.hnal
  have e_i : ∀ iv kv : BitVec 64, LE2 En0 iv kv (nm "i") = some (.val (.word iv)) := by
    intro iv kv; unfold LE2; simp (config := {decide := true}) [Env.set]
  unfold ptS61
  refine hoare_pre (hoare_while2 (I := I2 E En0 S nv) (fun s h => i2_clk s h) ?_ ?_) ?_
  · intro s hs ⟨⟨iv, kv, hle, hkv, hpa⟩, hc⟩
    have hlt := cond_lt_true (hpa.2 _ _ (e_i iv kv)) (hpa.2 _ _ (e_nal iv kv)) (by omega) (by omega) hc
    exact l2_outer_step hP K iv kv hlt hkv s hs hpa
  · intro s hs ⟨iv, kv, hle, hkv, hpa⟩ hc
    have hge := cond_lt_false (hpa.2 _ _ (e_i iv kv)) (hpa.2 _ _ (e_nal iv kv)) (by omega) (by omega) hc
    have : iv = nv := BitVec.eq_of_toNat_eq (by omega)
    subst this
    have : kv = nkv := BitVec.eq_of_toNat_eq (by rw [hkv, K.hnkv])
    subst this
    exact hpa
  · intro s _ hpa
    exact ⟨0, 0, by simp, by simp [nsS], hpa⟩


theorem cy_LE2 {E : PtE σ} {En0 : Env} {S : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w : BitVec 64} (C : Cy E En0 S rp rl buf n CV w) (iv kv : BitVec 64) :
    Cy E (LE2 En0 iv kv) S rp rl buf n CV w :=
  cy_set (cy_set C (x := nm "k") (by decide) (by decide) _) (x := nm "i") (by decide) (by decide) _

theorem ex_LE2 {En : Env} {iv kv : BitVec 64} {rest : List (MlS × ValueHOL 64)}
    (h : EX En ((nm "i", .val (.word 0)) :: (nm "k", .val (.word 0)) :: rest))
    (hn1 : nm "k" ∉ rest.map Prod.fst) (hn2 : nm "i" ∉ rest.map Prod.fst) :
    EX (LE2 En iv kv) ((nm "i", .val (.word iv)) :: (nm "k", .val (.word kv)) :: rest) := by
  intro p hp
  rcases List.mem_cons.mp hp with rfl | hp
  · unfold LE2; exact env_set_self _ _ _
  rcases List.mem_cons.mp hp with rfl | hp
  · unfold LE2; rw [env_set_ne _ _ (show nm "k" ≠ nm "i" by decide)]; exact env_set_self _ _ _
  · have h1 : p.1 ≠ nm "k" := fun e => hn1 (List.mem_map.mpr ⟨p, hp, e⟩)
    have h2 : p.1 ≠ nm "i" := fun e => hn2 (List.mem_map.mpr ⟨p, hp, e⟩)
    unfold LE2
    rw [env_set_ne _ _ h2, env_set_ne _ _ h1]
    exact h p (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ hp))

/-- Chunk 7: loop 2 (`ptS59 = ptS61; ptS60`). -/
theorem pt_c7 {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)} {w : BitVec 64}
    {rest : List (MlS × ValueHOL 64)} {fs rdl : List Fct} {ak nv nkv : BitVec 64}
    (hP : PtPreX E) (hnv : NalOK E nv) (hnkv : nkv.toNat = nsS E.s0.memory (lst0 E) nv.toNat)
    (C : CyB E En S rp rl buf n CV w
      ((nm "i", .val (.word 0)) :: (nm "k", .val (.word 0)) :: (nm "al_keys", .val (.word ak)) :: rest) fs rdl)
    (hnal : (nm "nal", (.val (.word nv) : ValueHOL 64)) ∈ rest)
    (hobj : Fct.obj ak tVAL (akN nkv.toNat) ∈ fs)
    (hpp : Fct.prop (ak.toNat % 8 = 0 ∧ heapBase ≤ ak.toNat ∧ ak.toNat + akN nkv.toNat ≤ heapEnd) ∈ fs)
    (hn1 : nm "k" ∉ ((nm "al_keys", (.val (.word ak) : ValueHOL 64)) :: rest).map Prod.fst)
    (hn2 : nm "i" ∉ ((nm "al_keys", (.val (.word ak) : ValueHOL 64)) :: rest).map Prod.fst)
    (hk : CyB E (LE2 En nv nkv) S rp rl buf n CV w
      ((nm "i", .val (.word nv)) :: (nm "k", .val (.word nkv)) :: (nm "al_keys", .val (.word ak)) :: rest) fs rdl →
      Hoare σ guestCtx (PA E (LE2 En nv nkv) S) ptS60 QT) :
    Hoare σ guestCtx (PA E En S) ptS59 QT := by
  obtain ⟨C0, hex, hfx, hrd⟩ := C
  have hni : En (nm "i") = some (.val (.word 0)) := ex_get hex (List.mem_cons_self ..)
  have hnk : En (nm "k") = some (.val (.word 0)) := ex_get hex (List.mem_cons_of_mem _ (List.mem_cons_self ..))
  have hak : En (nm "al_keys") = some (.val (.word ak)) :=
    ex_get hex (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ (List.mem_cons_self ..)))
  have hnal' : En (nm "nal") = some (.val (.word nv)) :=
    ex_get hex (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ hnal)))
  have K : L2C E En S ak nv nkv w rp rl buf n CV := ⟨C0, hnal', hak, hnv, hnkv, fxs_get hfx hobj, fxs_get hfx hpp⟩
  unfold ptS59
  refine hseqN (P1 := PA E (LE2 En nv nkv) S) ?_ ?_
  · refine hoare_pre (pt_loop2 hP K) ?_
    intro s _ hpa
    rw [le2_zero_same hnk hni]; exact hpa
  · exact hk ⟨cy_LE2 C0 nv nkv, ex_LE2 hex hn1 hn2, hfx, hrd⟩

end InitECandidate.Solver.MemSafe.Ptx
#print axioms InitECandidate.Solver.MemSafe.Ptx.pt_loop2
