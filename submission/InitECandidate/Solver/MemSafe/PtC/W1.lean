import InitECandidate.Solver.MemSafe.PtC.W0

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

variable {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}

theorem cw_decAllocA {E : PtE σ}
    {En : Env}
    {S : FS}
    {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rn : MlS}
    (hQT : ResIns rn QT)
    {e : ExpHOL 64}
    {n : BitVec 64}
    {k : ProgHOL 64}
    {ty : Nat}
    (he : ∀ s : State σ, PA E En S s → EvI s e (.val (.word n)))
    (hGl : ∀ g ty', S (Fct.gobj g ty') → cW.contains g = false ∧ g ≠ gHeap)
    (hplain : Plain ty)
    (htag : guestC.tags.lookup ty = none)
    (hreg : (guestC.ty ty).region = .heap)
    (hslot : ∀ j, (guestC.ty ty).slot j = .scalar)
    (hmin : (guestC.ty ty).minSz ≤ n.toNat)
    (hn8 : n.toNat % 8 = 0)
    (hnpos : 0 < n.toNat)
    (hk : ∀ w : BitVec 64,
      CW' (PA E (En.set rn (.val (.word w)))
        (addF S [Fct.obj w ty n.toNat, Fct.bufok0 w n.toNat,
          Fct.prop (w.toNat % 8 = 0 ∧ heapBase ≤ w.toNat ∧ w.toNat + n.toNat ≤ heapEnd)])) k (cbd k) QT) :
    CW' (PA E En S) (.decCall rn .one (nm "alloc") [e] k) (cbd (.decCall rn .one (nm "alloc") [e] k)) QT :=
  cw_decCallW (E := E) hQT (hrule := fun _ _ hq hk' => hdecAllocA hq he hGl hplain htag hreg hslot hmin hn8 hnpos hk') (hk := hk)

theorem cw_decAllocF {E : PtE σ}
    {En : Env}
    {S : FS}
    {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rn : MlS}
    (hQT : ResIns rn QT)
    {e : ExpHOL 64}
    {n : BitVec 64}
    {k : ProgHOL 64}
    (he : ∀ s : State σ, PA E En S s → EvI s e (.val (.word n)))
    (hGl : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false)
    (hk : ∀ w : BitVec 64,
      CW' (PA E (En.set rn (.val (.word w)))
        (addF S [Fct.fbuf w n.toNat,
          Fct.prop (w.toNat % 8 = 0 ∧ heapBase ≤ w.toNat ∧ w.toNat + n.toNat ≤ heapEnd)])) k (cbd k) QT) :
    CW' (PA E En S) (.decCall rn .one (nm "alloc") [e] k) (cbd (.decCall rn .one (nm "alloc") [e] k)) QT :=
  cw_decCallW (E := E) hQT (hrule := fun _ _ hq hk' => hdecAllocF hq he hGl hk') (hk := hk)

theorem cw_decAllocF2 {E : PtE σ}
    {En : Env}
    {S : FS}
    {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rn : MlS}
    (hQT : ResIns rn QT)
    {e : ExpHOL 64}
    {n : BitVec 64}
    {k : ProgHOL 64}
    (he : ∀ s : State σ, PA E En S s → EvI s e (.val (.word n)))
    (hGl : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false)
    (hn0 : 0 < n.toNat)
    (PB : List (BitVec 64 × Nat))
    (hPB : ∀ b ∈ PB, S (Fct.fbuf b.1 b.2) ∧ S (Fct.prop (BlkP b.1 b.2)) ∧ b.2 % 8 = 0 ∧ 0 < b.2)
    (hk : ∀ w : BitVec 64,
      CW' (PA E (En.set rn (.val (.word w)))
        (addF S (Fct.fbuf w n.toNat :: Fct.prop (BlkP w n.toNat) ::
          PB.map (fun b => Fct.prop (b.1.toNat + b.2 ≤ w.toNat))))) k (cbd k) QT) :
    CW' (PA E En S) (.decCall rn .one (nm "alloc") [e] k) (cbd (.decCall rn .one (nm "alloc") [e] k)) QT :=
  cw_decCallW (E := E) hQT (hrule := fun _ _ hq hk' => hdecAllocF2 hq he hGl hn0 PB hPB hk') (hk := hk)

theorem cw_decAllocR {E : PtE σ}
    {En : Env}
    {S : FS}
    {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rn : MlS}
    (hQT : ResIns rn QT)
    {e : ExpHOL 64}
    {n : BitVec 64}
    {k : ProgHOL 64}
    {ty : Nat}
    (he : ∀ s : State σ, PA E En S s → EvI s e (.val (.word n)))
    (hGl : ∀ g ty', S (Fct.gobj g ty') → cW.contains g = false ∧ g ≠ gHeap)
    (hplain : Plain ty)
    (htag : guestC.tags.lookup ty = none)
    (hreg : (guestC.ty ty).region = .heap)
    (hslot : ∀ j, (guestC.ty ty).slot j = .scalar)
    (N : Nat)
    (hN : N = n.toNat + (8 - n.toNat % 8) % 8)
    (hmin : (guestC.ty ty).minSz ≤ N)
    (hnpos : 0 < n.toNat)
    (hk : ∀ w : BitVec 64,
      CW' (PA E (En.set rn (.val (.word w)))
        (addF S [Fct.obj w ty N, Fct.bufok0 w N,
          Fct.prop (w.toNat % 8 = 0 ∧ heapBase ≤ w.toNat ∧ w.toNat + N ≤ heapEnd)])) k (cbd k) QT) :
    CW' (PA E En S) (.decCall rn .one (nm "alloc") [e] k) (cbd (.decCall rn .one (nm "alloc") [e] k)) QT :=
  cw_decCallW (E := E) hQT (hrule := fun _ _ hq hk' => hdecAllocR hq he hGl hplain htag hreg hslot N hN hmin hnpos hk') (hk := hk)

theorem cw_decNew {E : PtE σ}
    {En : Env}
    {S : FS}
    {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {f rn : MlS}
    {N : Nat}
    {k : ProgHOL 64}
    (hQT : ResIns rn QT)
    (hf : FunSpec σ guestCtx f (fun vs s r t => ∀ v, r = .returned v → NewR N s v t))
    (hfin : ptAllNames.contains f = true)
    (hN8 : N % 8 = 0)
    (hN0 : 0 < N)
    (hNb : N < 2 ^ 20)
    (ZC : List Nat)
    (hZ : ∀ o ∈ ZC, o % 8 = 0 ∧ o + 8 ≤ N)
    (hGl : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false)
    (hk : ∀ w : BitVec 64, CW' (PA E (En.set rn (.val (.word w)))
      (addF S (Fct.fbuf w N :: Fct.prop (w.toNat % 8 = 0 ∧ heapBase ≤ w.toNat ∧ w.toNat + N ≤ heapEnd) ::
        ZC.map (fun o => Fct.memw (w + BitVec.ofNat 64 o) 0)))) k (cbd k) QT)
    (hfc : (BlsSlotCost.Callers.table12 f).isSome = true := by decide_cbv) :
    CW' (PA E En S) (.decCall rn .one f [] k) (cbd (.decCall rn .one f [] k)) QT :=
  cw_decCallW (E := E) hQT (hrule := fun _ _ hq hk' => hdecNew hq hf hfin hN8 hN0 hNb ZC hZ hGl hk') (hf := hfc) (hk := hk)

theorem cw_decNewP {E : PtE σ}
    {En : Env}
    {S : FS}
    {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {f rn : MlS}
    {N : Nat}
    {k : ProgHOL 64}
    (hQT : ResIns rn QT)
    (hf : FunSpec σ guestCtx f (fun vs s r t => ∀ v, r = .returned v → NewR N s v t))
    (hfin : ptAllNames.contains f = true)
    (hN8 : N % 8 = 0)
    (hN0 : 0 < N)
    (hNb : N < 2 ^ 20)
    (ZC : List Nat)
    (hZ : ∀ o ∈ ZC, o % 8 = 0 ∧ o + 8 ≤ N)
    (hGl : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false)
    (PB : List (BitVec 64 × Nat))
    (hPB : ∀ b ∈ PB, S (Fct.fbuf b.1 b.2) ∧ S (Fct.prop (BlkP b.1 b.2)) ∧ b.2 % 8 = 0 ∧ 0 < b.2)
    (hk : ∀ w : BitVec 64, CW' (PA E (En.set rn (.val (.word w)))
      (addF S (Fct.fbuf w N :: Fct.prop (w.toNat % 8 = 0 ∧ heapBase ≤ w.toNat ∧ w.toNat + N ≤ heapEnd) ::
        (ZC.map (fun o => Fct.memw (w + BitVec.ofNat 64 o) 0) ++
          PB.map (fun b => Fct.prop (b.1.toNat + b.2 ≤ w.toNat)))))) k (cbd k) QT)
    (hfc : (BlsSlotCost.Callers.table12 f).isSome = true := by decide_cbv) :
    CW' (PA E En S) (.decCall rn .one f [] k) (cbd (.decCall rn .one f [] k)) QT :=
  cw_decCallW (E := E) hQT (hrule := fun _ _ hq hk' => hdecNewP hq hf hfin hN8 hN0 hNb ZC hZ hGl PB hPB hk') (hf := hfc) (hk := hk)

theorem cw_decHtabNew {E : PtE σ}
    {En : Env}
    {S : FS}
    {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rn : MlS}
    {KL CP th : Nat}
    {k : ProgHOL 64}
    (hQT : ResIns rn QT)
    (hf : CSumm σ guestCtx guestC (HR σ) (nm "htab_new") ⟨[.eq KL, .eq CP], [.fits (.ptr th)], [], true⟩ [])
    (hGl : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false)
    (hk : ∀ w : BitVec 64, CW' (PA E (En.set rn (.val (.word w))) (addF S [Fct.obj w th 0])) k (cbd k) QT) :
    CW' (PA E En S) (.decCall rn .one (nm "htab_new") [cw KL, cw CP] k) (cbd (.decCall rn .one (nm "htab_new") [cw KL, cw CP] k)) QT :=
  cw_decCallW (E := E) hQT (hrule := fun _ _ hq hk' => hdecHtabNew hq hf hGl hk') (hk := hk)

theorem cw_decAny {E : PtE σ}
    {En : Env}
    {S : FS}
    {f : MlS}
    {sg : Sig}
    {args : List (ExpHOL 64)}
    {rn : MlS}
    {sh : ShapeHOL}
    {k : ProgHOL 64}
    {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hQT : ResIns rn QT)
    (hf : CSumm σ guestCtx guestC (HR σ) f sg [])
    (hps : ∀ pt ∈ sg.params, pt = .any)
    (hgw : sg.gw = [])
    (hfin : ptAllNames.contains f = true)
    (hlen : sg.params.length = args.length)
    (hGl : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false)
    (hk : ∀ v, shapeEqHOL (shapeOfHOLExact v) sh = true →
      CW' (PA E (En.set rn v) S) k (cbd k) QT)
    (hfc : (BlsSlotCost.Callers.table12 f).isSome = true := by decide_cbv)
    (hszc : ∀ c : Flapjack.Pancake.PanLang.StructContextExact, Flapjack.Pancake.PanLang.sizeOfShapeWithContextHOL c sh ≤ 32 := by first | exact sz_one | exact sz_comb 2 (by norm_num) | exact sz_comb 3 (by norm_num) | exact sz_comb 4 (by norm_num) | exact sz_comb 5 (by norm_num)) :
    CW' (PA E En S) (.decCall rn sh f args k) (cbd (.decCall rn sh f args k)) QT :=
  cw_decCallV (E := E) hQT (hrule := fun _ _ hq hk' => hdecAny hq hf hps hgw hfin hlen hGl hk') (hf := hfc) (hsz := hszc) (hk := hk)

theorem cw_decNoNF {E : PtE σ}
    {En : Env}
    {S : FS}
    {f : MlS}
    {sg : Sig}
    {cs : List Cap}
    {args : List (ExpHOL 64)}
    {rn : MlS}
    {sh : ShapeHOL}
    {k : ProgHOL 64}
    {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hQT : ResIns rn QT)
    (hf : CSumm σ guestCtx guestC (HR σ) f sg cs)
    (h : CallOK E En S f sg cs args)
    (hk : ∀ v, shapeEqHOL (shapeOfHOLExact v) sh = true → CW' (PA E (En.set rn v) S) k (cbd k) QT)
    (hfc : (BlsSlotCost.Callers.table12 f).isSome = true := by decide_cbv)
    (hszc : ∀ c : Flapjack.Pancake.PanLang.StructContextExact, Flapjack.Pancake.PanLang.sizeOfShapeWithContextHOL c sh ≤ 32 := by first | exact sz_one | exact sz_comb 2 (by norm_num) | exact sz_comb 3 (by norm_num) | exact sz_comb 4 (by norm_num) | exact sz_comb 5 (by norm_num)) :
    CW' (PA E En S) (.decCall rn sh f args k) (cbd (.decCall rn sh f args k)) QT :=
  cw_decCallV (E := E) hQT (hrule := fun _ _ hq hk' => hdecNoNF hq hf h hk') (hf := hfc) (hsz := hszc) (hk := hk)

theorem cw_decAnyU {f : MlS}
    {sg : Sig}
    {args : List (ExpHOL 64)}
    {rn : MlS}
    {sh : ShapeHOL}
    {k : ProgHOL 64}
    (hQT : ResIns rn QT)
    (hf : CSumm σ guestCtx guestC (HR σ) f sg [])
    (hps : ∀ pt ∈ sg.params, pt = .any)
    (hgw : sg.gw = [])
    (hfin : ptAllNames.contains f = true)
    (hlen : sg.params.length = args.length)
    (hGl : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false)
    (hrn : En rn = none)
    (hk : CW' (PA E En S) k (cbd k) QT)
    (hfc : (BlsSlotCost.Callers.table12 f).isSome = true := by decide_cbv)
    (hszc : ∀ c : Flapjack.Pancake.PanLang.StructContextExact, Flapjack.Pancake.PanLang.sizeOfShapeWithContextHOL c sh ≤ 32 := by first | exact sz_one | exact sz_comb 2 (by norm_num) | exact sz_comb 3 (by norm_num) | exact sz_comb 4 (by norm_num) | exact sz_comb 5 (by norm_num))
    (hexc : ∃ v0 : ValueHOL 64, shapeEqHOL (shapeOfHOLExact v0) sh = true := by
      first
        | exact ⟨.val (.word 0), (shapeEqHOL_eq_true _ _).mpr (shapeOf_val _)⟩
        | exact ⟨wv [0, 0], shEq_wv _ _ rfl⟩ | exact ⟨wv [0, 0, 0], shEq_wv _ _ rfl⟩
        | exact ⟨wv [0, 0, 0, 0], shEq_wv _ _ rfl⟩ | exact ⟨wv [0, 0, 0, 0, 0], shEq_wv _ _ rfl⟩) :
    CW' (PA E En S) (.decCall rn sh f args k) (cbd (.decCall rn sh f args k)) QT :=
  cw_decCallU (E := E) hQT hrn (hrule := fun _ _ hq hk' => hdecAnyU hq hf hps hgw hfin hlen hGl hrn hk') (hf := hfc) (hsz := hszc) (hex := hexc) (hk := hk)

theorem cw_decNoNFU {f : MlS}
    {sg : Sig}
    {cs : List Cap}
    {args : List (ExpHOL 64)}
    {rn : MlS}
    {sh : ShapeHOL}
    {k : ProgHOL 64}
    (hQT : ResIns rn QT)
    (hf : CSumm σ guestCtx guestC (HR σ) f sg cs)
    (h : CallOK E En S f sg cs args)
    (hrn : En rn = none)
    (hk : CW' (PA E En S) k (cbd k) QT)
    (hfc : (BlsSlotCost.Callers.table12 f).isSome = true := by decide_cbv)
    (hszc : ∀ c : Flapjack.Pancake.PanLang.StructContextExact, Flapjack.Pancake.PanLang.sizeOfShapeWithContextHOL c sh ≤ 32 := by first | exact sz_one | exact sz_comb 2 (by norm_num) | exact sz_comb 3 (by norm_num) | exact sz_comb 4 (by norm_num) | exact sz_comb 5 (by norm_num))
    (hexc : ∃ v0 : ValueHOL 64, shapeEqHOL (shapeOfHOLExact v0) sh = true := by
      first
        | exact ⟨.val (.word 0), (shapeEqHOL_eq_true _ _).mpr (shapeOf_val _)⟩
        | exact ⟨wv [0, 0], shEq_wv _ _ rfl⟩ | exact ⟨wv [0, 0, 0], shEq_wv _ _ rfl⟩
        | exact ⟨wv [0, 0, 0, 0], shEq_wv _ _ rfl⟩ | exact ⟨wv [0, 0, 0, 0, 0], shEq_wv _ _ rfl⟩) :
    CW' (PA E En S) (.decCall rn sh f args k) (cbd (.decCall rn sh f args k)) QT :=
  cw_decCallU (E := E) hQT hrn (hrule := fun _ _ hq hk' => hdecNoNFU hq hf h hrn hk') (hf := hfc) (hsz := hszc) (hex := hexc) (hk := hk)

theorem cw_dec_min {rb eg : BitVec 64}
    {k : ProgHOL 64}
    {rn : MlS}
    (hQT : ResIns rn QT)
    (hrb : ∀ s : State σ, PA E En S s → EvI s (lv (nm "regular_budget")) (.val (.word rb)))
    (heg : ∀ s : State σ, PA E En S s → EvI s (lv (nm "execution_gas")) (.val (.word eg)))
    (hGl : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false)
    (hk : ∀ z : BitVec 64, CW' (PA E (En.set rn (.val (.word z))) (fun f => S f ∨ f = Fct.prop (z.toNat ≤ rb.toNat))) k (cbd k) QT) :
    CW' (PA E En S) (.decCall rn .one (nm "min") [lv (nm "regular_budget"), lv (nm "execution_gas")] k) (cbd (.decCall rn .one (nm "min") [lv (nm "regular_budget"), lv (nm "execution_gas")] k)) QT :=
  cw_decCallW (E := E) hQT (hrule := fun _ _ hq hk' => hdec_min hq hrb heg hGl hk') (hk := hk)

end InitECandidate.Solver.MemSafe.PtC
