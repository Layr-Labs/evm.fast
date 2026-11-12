import InitECandidate.Solver.MemSafe.Ptx.PtL6

/-!
# F3e: chunk 6a (loop 1 as a context transformer; `ptS54` to `ptS55`)
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

theorem le_zero_same {En : Env} (h1 : En (nm "nkeys") = some (.val (.word 0)))
    (h2 : En (nm "i") = some (.val (.word 0))) : LE En 0 0 = En := by
  unfold LE
  rw [env_set_same h1, env_set_same h2]

theorem ex_LE {En : Env} {iv nkv : BitVec 64} {rest : List (MlS × ValueHOL 64)}
    (h : EX En ((nm "i", .val (.word 0)) :: (nm "nkeys", .val (.word 0)) :: rest))
    (hn1 : nm "nkeys" ∉ rest.map Prod.fst) (hn2 : nm "i" ∉ rest.map Prod.fst) :
    EX (LE En iv nkv) ((nm "i", .val (.word iv)) :: (nm "nkeys", .val (.word nkv)) :: rest) := by
  intro p hp
  rcases List.mem_cons.mp hp with rfl | hp
  · exact le_i _ _ _
  rcases List.mem_cons.mp hp with rfl | hp
  · exact le_nk _ _ _
  · have h1 : p.1 ≠ nm "nkeys" := fun e => hn1 (List.mem_map.mpr ⟨p, hp, e⟩)
    have h2 : p.1 ≠ nm "i" := fun e => hn2 (List.mem_map.mpr ⟨p, hp, e⟩)
    rw [le_other iv nkv h1 h2]
    exact h p (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ hp))


/-- Chunk 6a: loop 1 (`ptS54` = `ptS56; ptS55`). -/
theorem pt_c6a {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)} {w : BitVec 64}
    {ex0 : List (MlS × ValueHOL 64)} {fs0 : List Fct} {wt nv wa : BitVec 64} {nbl : Nat}
    (hP : PtPreX E) (hnv : NalOK E nv) (hnbl : nbl = (nv.toNat + 1) * 8)
    (hppt : Fct.prop (BlkP wt 200) ∈ fs0)
    (C : CyB E En S rp rl buf n CV w
      ((nm "i", .val (.word 0)) :: (nm "nkeys", .val (.word 0)) :: (nm "al_addrs", .val (.word wa)) ::
        (nm "nal", .val (.word nv)) :: ex0)
      (Fct.arrbuf wa nbl 1 20 :: Fct.arrbuf wa nbl 0 20 :: Fct.bufok0 (rd E.s0.memory (E.be + BitVec.ofNat 64 32)) 20 ::
        Fct.prop (wt.toNat + 200 ≤ wa.toNat) :: Fct.prop (BlkP wa nbl) :: Fct.fbuf wa nbl :: fs0)
      (Fct.arrbuf wa nbl 1 20 :: TeRd wt w))
    (hn1 : nm "nkeys" ∉ ((nm "al_addrs", (.val (.word wa) : ValueHOL 64)) :: (nm "nal", (.val (.word nv) : ValueHOL 64)) :: ex0).map Prod.fst)
    (hn2 : nm "i" ∉ ((nm "nkeys", (.val (.word 0) : ValueHOL 64)) :: (nm "al_addrs", (.val (.word wa) : ValueHOL 64)) ::
      (nm "nal", (.val (.word nv) : ValueHOL 64)) :: ex0).map Prod.fst)
    (hk : ∀ (En' : Env) (S' : FS) (nkv : BitVec 64), nkv.toNat = nsS E.s0.memory (lst0 E) nv.toNat →
      CyB E En' S' rp rl buf n CV w
        ((nm "i", .val (.word nv)) :: (nm "nkeys", .val (.word nkv)) :: (nm "al_addrs", .val (.word wa)) ::
          (nm "nal", .val (.word nv)) :: ex0)
        (Fct.arrbuf wa nbl (nv.toNat + 1) 20 :: Fct.arrbuf wa nbl 1 20 :: Fct.arrbuf wa nbl 0 20 ::
          Fct.bufok0 (rd E.s0.memory (E.be + BitVec.ofNat 64 32)) 20 ::
          Fct.prop (wt.toNat + 200 ≤ wa.toNat) :: Fct.prop (BlkP wa nbl) :: Fct.fbuf wa nbl :: fs0)
        (Fct.arrbuf wa nbl (nv.toNat + 1) 20 :: Fct.arrbuf wa nbl 1 20 :: TeRd wt w) →
      Hoare σ guestCtx (PA E En' S') ptS55 QT) :
    Hoare σ guestCtx (PA E En S) ptS54 QT := by
  obtain ⟨C0, hex, hfx, hrd⟩ := C
  have hex' : EX En ((nm "i", .val (.word 0)) :: (nm "nkeys", .val (.word 0)) :: ((nm "al_addrs", .val (.word wa)) ::
        (nm "nal", .val (.word nv)) :: ex0)) := hex
  have hni : En (nm "i") = some (.val (.word 0)) := ex_get hex (List.mem_cons_self ..)
  have hnk : En (nm "nkeys") = some (.val (.word 0)) := ex_get hex (List.mem_cons_of_mem _ (List.mem_cons_self ..))
  have hnal : En (nm "nal") = some (.val (.word nv)) :=
    ex_get hex (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ (List.mem_cons_self ..))))
  have hwa : En (nm "al_addrs") = some (.val (.word wa)) :=
    ex_get hex (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ (List.mem_cons_self ..)))
  have K : L1C E En S wa wt nv w nbl rp rl buf n CV :=
    ⟨C0, hnal, hwa, hnv, hnbl, fxs_get hfx (f := Fct.fbuf wa nbl) (by simp),
      fxs_get hfx (f := Fct.prop (BlkP wa nbl)) (by simp),
      fxs_get hfx (f := Fct.prop (wt.toNat + 200 ≤ wa.toNat)) (by simp),
      fxs_get hfx (f := Fct.arrbuf wa nbl 1 20) (by simp), fxs_get hfx (f := Fct.prop (BlkP wt 200)) (by simp [hppt]), hrd⟩
  unfold ptS54
  refine hseqN (P1 := fun t => ∃ nkv : BitVec 64, nkv.toNat = nsS E.s0.memory (lst0 E) nv.toNat ∧
    PA E (LE En nv nkv) (L1S S wa nbl nv) t) ?_ ?_
  · refine hoare_pre (pt_loop1 hP K) ?_
    intro s _ hpa
    rw [le_zero_same hnk hni]
    exact pa_mono hpa (fun x v h => h) (fun f hf => hf.elim id (fun e => by rw [List.mem_singleton] at e; subst e; exact K.harr1))
  · refine hoare_exC fun nkv hnkv => ?_
    refine hk _ _ nkv hnkv ⟨?_, ?_, ?_, ?_⟩
    · exact cy_addF (cy_LE C0 nv nkv) [Fct.arrbuf wa nbl (nv.toNat + 1) 20] (by simp)
    · have hn2' : nm "i" ∉ ((nm "al_addrs", (.val (.word wa) : ValueHOL 64)) :: (nm "nal", (.val (.word nv) : ValueHOL 64)) :: ex0).map Prod.fst :=
        fun h => hn2 (by
          obtain ⟨q, hq, e⟩ := List.mem_map.mp h
          exact List.mem_map.mpr ⟨q, List.mem_cons_of_mem _ hq, e⟩)
      exact ex_LE hex hn1 hn2'
    · intro f hf
      rcases List.mem_cons.mp hf with rfl | hf
      · exact Or.inr (by simp)
      · exact Or.inl (hfx f hf)
    · exact rdin_cons hrd (Fct.arrbuf wa nbl (nv.toNat + 1) 20)

end InitECandidate.Solver.MemSafe.Ptx
