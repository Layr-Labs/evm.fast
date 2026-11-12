import InitECandidate.Solver.MemSafe.PtC.S5

/-!
# PtC: stages 1 to 3
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.PtC
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Ptx

variable {σ : Type}

theorem cpt_c6a {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
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
      CW' (PA E En' S') ptS55 (cbd ptS55) QT) :
    CW' (PA E En S) ptS54 (cbd ptS54) QT := by
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
  refine cw_seqN (P1 := fun t => ∃ nkv : BitVec 64, nkv.toNat = nsS E.s0.memory (lst0 E) nv.toNat ∧
    PA E (LE En nv nkv) (L1S S wa nbl nv) t) ?_ ?_
  · refine hoare_pre (pt_loop1 hP K) ?_
    intro s _ hpa
    rw [le_zero_same hnk hni]
    exact pa_mono hpa (fun x v h => h) (fun f hf => hf.elim id (fun e => by rw [List.mem_singleton] at e; subst e; exact K.harr1))
  · refine cw_exC fun nkv hnkv => ?_
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

theorem cpt_c6b {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
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
      CW' (PA E En' S') ptS59 (cbd ptS59) QT) :
    CW' (PA E En S) ptS55 (cbd ptS55) QT := by
  obtain ⟨C0, hex, hfx, hrd⟩ := C
  have hnkl : En (nm "nkeys") = some (.val (.word nkv)) :=
    ex_get hex (List.mem_cons_of_mem _ hnk)
  have hnn := nk_n hnkb
  unfold ptS55
  refine cw_decAllocR (n := nkv * BitVec.ofNat 64 52 + BitVec.ofNat 64 8) (ty := tVAL) (locIns_resIns hQT _)
    (fun s hpa => evI_add (evI_mul (evI_lv (hpa.2 _ _ hnkl)) (evI_cw s 52)) (evI_cw s 8))
    (fun g ty h => C0.gl g ty h) plain_tVAL' tags_tVAL tval_reg tval_slot (akN nkv.toNat)
    (by rw [hnn]; unfold akN; rfl) (by rw [tval_min]; exact le_trans (by omega) (akN_ge _)) (by rw [hnn]; omega) ?_
  intro ak
  have C1 := cy_setF C0 (x := nm "al_keys") (by decide) (by decide) (.val (.word ak))
    [Fct.obj ak tVAL (akN nkv.toNat), Fct.bufok0 ak (akN nkv.toNat),
      Fct.prop (ak.toNat % 8 = 0 ∧ heapBase ≤ ak.toNat ∧ ak.toNat + akN nkv.toNat ≤ heapEnd)]
    (by intro X hX; simp at hX; rcases hX with rfl | rfl | rfl <;> simp)
  unfold ptS57
  refine cw_decT (w := 0) (locIns_resIns hQT _) (fun s _ => evI_cw s 0) ?_
  have C2 := cy_set C1 (x := nm "k") (by decide) (by decide) (.val (.word 0))
  unfold ptS58
  have hi1 : ((En.set (nm "al_keys") (.val (.word ak))).set (nm "k") (.val (.word 0))) (nm "i") = some (.val (.word iv0)) := by
    rw [env_set_ne _ _ (by decide), env_set_ne _ _ (by decide)]
    exact ex_get hex (List.mem_cons_self ..)
  refine cw_seqN (hassignT (n := nm "i") (w' := 0) ⟨_, hi1⟩ (fun s _ v hv => evI_cw s 0 v hv)) ?_
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

theorem cpt_c7 {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
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
      CW' (PA E (LE2 En nv nkv) S) ptS60 (cbd ptS60) QT) :
    CW' (PA E En S) ptS59 (cbd ptS59) QT := by
  obtain ⟨C0, hex, hfx, hrd⟩ := C
  have hni : En (nm "i") = some (.val (.word 0)) := ex_get hex (List.mem_cons_self ..)
  have hnk : En (nm "k") = some (.val (.word 0)) := ex_get hex (List.mem_cons_of_mem _ (List.mem_cons_self ..))
  have hak : En (nm "al_keys") = some (.val (.word ak)) :=
    ex_get hex (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ (List.mem_cons_self ..)))
  have hnal' : En (nm "nal") = some (.val (.word nv)) :=
    ex_get hex (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ hnal)))
  have K : L2C E En S ak nv nkv w rp rl buf n CV := ⟨C0, hnal', hak, hnv, hnkv, fxs_get hfx hobj, fxs_get hfx hpp⟩
  unfold ptS59
  refine cw_seqN (P1 := PA E (LE2 En nv nkv) S) ?_ ?_
  · refine hoare_pre (pt_loop2 hP K) ?_
    intro s _ hpa
    rw [le2_zero_same hnk hni]; exact hpa
  · exact hk ⟨cy_LE2 C0 nv nkv, ex_LE2 hex hn1 hn2, hfx, hrd⟩

end InitECandidate.Solver.MemSafe.PtC
