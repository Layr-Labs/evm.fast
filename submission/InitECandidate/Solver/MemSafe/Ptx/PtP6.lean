import InitECandidate.Solver.MemSafe.Ptx.PtP5

/-!
# F3f: the `al_addrs` loop (`ptS98`) and the `al_keys` loop (`ptS103`)
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

theorem ofNat_toNat' (x : BitVec 64) : BitVec.ofNat 64 x.toNat = x := by
  apply BitVec.eq_of_toNat_eq
  rw [BitVec.toNat_ofNat]
  exact Nat.mod_eq_of_lt x.isLt

theorem bv_mul_c (x : BitVec 64) (c : Nat) (h : c * x.toNat < 2 ^ 64) (hc : c < 2 ^ 64) :
    x * BitVec.ofNat 64 c = BitVec.ofNat 64 (c * x.toNat) := by
  apply BitVec.eq_of_toNat_eq
  rw [BitVec.toNat_mul]
  simp only [BitVec.toNat_ofNat]
  have e : x.toNat * c = c * x.toNat := Nat.mul_comm _ _
  rw [Nat.mod_eq_of_lt (a := c) hc, e]

theorem pa_memw {E : PtE σ} {En : Env} {S : FS} {u : State σ} (h : PA E En S u) {a v : BitVec 64}
    (hf : S (Fct.memw a v)) : rd u.memory a = v := by
  obtain ⟨⟨D, Γ, p, hr, hD, hL⟩, -⟩ := h
  exact (hL _ hf).1

/-- An entry of a pointer-array block, as a tracked word and a safe buffer. -/
theorem hghostE {E : PtE σ} {En : Env} {S : FS} {c : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop} {wa x : BitVec 64} {nbl cnt n : Nat}
    (harr : S (Fct.arrbuf wa nbl cnt n)) (hx : x.toNat < cnt) (hxb : 8 * x.toNat < 2 ^ 64)
    (h : ∀ kw : BitVec 64, Hoare σ guestCtx
      (PA E En (addF S [Fct.memw (wa + x * BitVec.ofNat 64 8) kw, Fct.bufok0 kw n])) c Q) :
    Hoare σ guestCtx (PA E En S) c Q := by
  intro s hs hpa
  obtain ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩ := hpa
  have e8 : x * BitVec.ofNat 64 8 = BitVec.ofNat 64 (8 * x.toNat) := bv_mul_c x 8 hxb (by norm_num)
  refine h (rd s.memory (wa + x * BitVec.ofNat 64 8)) s hs ⟨⟨D, Γ, p, hr, hD, fun f hf => ?_⟩, hlk⟩
  obtain ⟨h1, h2, h3, hent, hcells⟩ := hL _ harr
  rcases hf with hf | hf
  · exact hL f hf
  · simp only [List.mem_cons, List.mem_singleton, List.not_mem_nil, or_false] at hf
    rcases hf with rfl | rfl
    · rw [e8]
      exact ⟨rfl, (hcells x.toNat hx).1, (hcells x.toNat hx).2⟩
    · have := hent x.toNat hx
      rw [e8]
      exact this

/-- **The `al_addrs` loop**: `htab_set(aa, al_addrs[i], 1)` for `i < nal + 1`. -/
theorem pt_loopB {E : PtE σ} {En : Env} {S : FS} {aaw wa nv : BitVec 64} {nbl : Nat}
    (haa : En (nm "aa") = some (.val (.word aaw))) (hwa : En (nm "al_addrs") = some (.val (.word wa)))
    (hnal : En (nm "nal") = some (.val (.word nv))) (hnv : nv.toNat + 1 ≤ 2 ^ 58)
    (hoa : S (Fct.obj aaw tHTh20 0)) (harr : S (Fct.arrbuf wa nbl (nv.toNat + 1) 20))
    (hGl : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false) :
    Hoare σ guestCtx (PA E (En.set (nm "i") (.val (.word 0))) S) ptS98
      (fun r t => r = none ∧ PA E (En.set (nm "i") (.val (.word (BitVec.ofNat 64 (nv.toNat + 1))))) S t) := by
  unfold ptS98
  have e_nal : ∀ x : BitVec 64, (En.set (nm "i") (.val (.word x))) (nm "nal") = some (.val (.word nv)) := by
    intro x; rw [env_set_ne _ _ (by decide)]; exact hnal
  have hnv1 : (nv + BitVec.ofNat 64 1).toNat = nv.toNat + 1 := bv_succ (by omega)
  refine hn_cloop (N := nv.toNat + 1) ?_ ?_ hnv ?_
  · intro x s hxN hpa hc
    have := cond_lt_gen (evI_lv (hpa.2 _ _ (env_set_self _ _ _)))
      (evI_add (evI_lv (hpa.2 _ _ (e_nal x))) (evI_cw s 1)) (by omega) (by rw [hnv1]; omega) hc
    rwa [hnv1] at this
  · intro x s hxN hpa hc
    have := cond_lt_gen_false (evI_lv (hpa.2 _ _ (env_set_self _ _ _)))
      (evI_add (evI_lv (hpa.2 _ _ (e_nal x))) (evI_cw s 1)) (by omega) (by rw [hnv1]; omega) hc
    rwa [hnv1] at this
  · intro x hx
    have e_aa : (En.set (nm "i") (.val (.word x))) (nm "aa") = some (.val (.word aaw)) := by
      rw [env_set_ne _ _ (by decide)]; exact haa
    have e_wa : (En.set (nm "i") (.val (.word x))) (nm "al_addrs") = some (.val (.word wa)) := by
      rw [env_set_ne _ _ (by decide)]; exact hwa
    have e_i : (En.set (nm "i") (.val (.word x))) (nm "i") = some (.val (.word x)) := env_set_self _ _ _
    unfold ptS202 ptS203
    refine hghostE harr hx (by omega) ?_
    intro kw
    have h1 : HN (PA E (En.set (nm "i") (.val (.word x)))
          (addF S [Fct.memw (wa + x * BitVec.ofNat 64 8) kw, Fct.bufok0 kw 20]))
        (callD (nm "htab_set") [lv (nm "aa"), .load .one (.op .add [lv (nm "al_addrs"),
          .panop .mul [lv (nm "i"), cw 8]]), cw 1])
        (PA E (En.set (nm "i") (.val (.word x)))
          (addF S [Fct.memw (wa + x * BitVec.ofNat 64 8) kw, Fct.bufok0 kw 20])) := by
      refine hn_hset (th := tHTh20) (n := 20) (m := 20) (kw := kw) (csOK_htab_set tHTh20 (by decide))
        tab_htab_set_20 e_aa (Or.inl hoa) ?_ (Or.inr (by simp)) le_rfl (hgl_addF hGl (by simp))
      intro s hpa
      have hm := pa_memw hpa (a := wa + x * BitVec.ofNat 64 8) (v := kw) (Or.inr (by simp))
      have := evI_ld (evI_add (evI_lv (hpa.2 _ _ e_wa)) (evI_mul (evI_lv (hpa.2 _ _ e_i)) (evI_cw s 8)))
      rw [hm] at this
      exact this
    have h2 : HN (PA E (En.set (nm "i") (.val (.word x)))
          (addF S [Fct.memw (wa + x * BitVec.ofNat 64 8) kw, Fct.bufok0 kw 20]))
        (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1]))
        (PA E (En.set (nm "i") (.val (.word (x + BitVec.ofNat 64 1))))
          (addF S [Fct.memw (wa + x * BitVec.ofNat 64 8) kw, Fct.bufok0 kw 20])) := by
      refine hn_post (hassignS (w' := x + BitVec.ofNat 64 1) ?_) (fun t _ h => by rwa [env_set_set] at h)
      intro s hpa v hv
      exact evI_add (evI_lv (hpa.2 _ _ e_i)) (evI_cw s 1) v hv
    refine hn_post (hn_seq h1 h2) ?_
    intro t _ h
    exact pa_mono h (fun x v h => h) (fun f hf => Or.inl hf)

/-- **The `al_keys` loop**: `htab_set(ak, al_keys + i * 52, 1)` for `i < nkeys`. -/
theorem pt_loopC {E : PtE σ} {En : Env} {S : FS} {akw ak nkv : BitVec 64}
    (hak' : En (nm "ak") = some (.val (.word akw))) (hal : En (nm "al_keys") = some (.val (.word ak)))
    (hnk : En (nm "nkeys") = some (.val (.word nkv))) (hnkb : nkv.toNat ≤ 2 ^ 58)
    (hoak : S (Fct.obj akw tHTh52 0)) (hobj : S (Fct.obj ak tVAL (akN nkv.toNat)))
    (hpp : S (Fct.prop (ak.toNat % 8 = 0 ∧ heapBase ≤ ak.toNat ∧ ak.toNat + akN nkv.toNat ≤ heapEnd)))
    (hGl : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false) :
    Hoare σ guestCtx (PA E (En.set (nm "i") (.val (.word 0))) S) ptS103
      (fun r t => r = none ∧ PA E (En.set (nm "i") (.val (.word nkv))) S t) := by
  unfold ptS103
  have e_nk : ∀ x : BitVec 64, (En.set (nm "i") (.val (.word x))) (nm "nkeys") = some (.val (.word nkv)) := by
    intro x; rw [env_set_ne _ _ (by decide)]; exact hnk
  have hfin := hn_cloop (E := E) (En := En) (S := S) (i := nm "i") (cond := .cmp .less (lv (nm "i")) (lv (nm "nkeys")))
    (body := ptS200) (N := nkv.toNat) ?_ ?_ hnkb ?_
  · refine hoare_post hfin (fun r t _ _ h => ⟨h.1, ?_⟩)
    rw [ofNat_toNat'] at h
    exact h.2
  · intro x s hxN hpa hc
    exact cond_lt_gen (evI_lv (hpa.2 _ _ (env_set_self _ _ _))) (evI_lv (hpa.2 _ _ (e_nk x))) (by omega)
      (by omega) hc
  · intro x s hxN hpa hc
    exact cond_lt_gen_false (evI_lv (hpa.2 _ _ (env_set_self _ _ _))) (evI_lv (hpa.2 _ _ (e_nk x))) (by omega)
      (by omega) hc
  · intro x hx
    have e_ak : (En.set (nm "i") (.val (.word x))) (nm "ak") = some (.val (.word akw)) := by
      rw [env_set_ne _ _ (by decide)]; exact hak'
    have e_al : (En.set (nm "i") (.val (.word x))) (nm "al_keys") = some (.val (.word ak)) := by
      rw [env_set_ne _ _ (by decide)]; exact hal
    have e_i : (En.set (nm "i") (.val (.word x))) (nm "i") = some (.val (.word x)) := env_set_self _ _ _
    unfold ptS200 ptS201
    refine hghostF (Fct.bufok0 (ak + x * BitVec.ofNat 64 52) 52) ?_ ?_
    · intro s hpa D Γ p hr hL
      obtain ⟨o, ho, hob, hot, hos⟩ := hL _ hobj
      have hbd : ak.toNat % 8 = 0 ∧ heapBase ≤ ak.toNat ∧ ak.toNat + akN nkv.toNat ≤ heapEnd := hL _ hpp
      have hb64 : heapEnd < 2 ^ 64 := by unfold heapEnd; norm_num
      have := akN_ge nkv.toNat
      have hn := toNat_add_mul ak x 52 x.toNat (by omega) rfl (by norm_num)
      refine bufok0_obj (ptRun_G hr) (ptRun_ptrs hr) ho (fun k => by rw [hot]; exact tval_slot k) ?_ ?_
      · simp only [Obj.lo]; rw [hob, hn]; omega
      · simp only [Obj.hi]; rw [hob, hn]; omega
    · have h1 : HN (PA E (En.set (nm "i") (.val (.word x))) (addF S [Fct.bufok0 (ak + x * BitVec.ofNat 64 52) 52]))
          (callD (nm "htab_set") [lv (nm "ak"), .op .add [lv (nm "al_keys"),
            .panop .mul [lv (nm "i"), cw 52]], cw 1])
          (PA E (En.set (nm "i") (.val (.word x))) (addF S [Fct.bufok0 (ak + x * BitVec.ofNat 64 52) 52])) := by
        refine hn_hset (th := tHTh52) (n := 52) (m := 52) (kw := ak + x * BitVec.ofNat 64 52)
          (csOK_htab_set tHTh52 (by decide)) tab_htab_set_52 e_ak (Or.inl hoak) ?_ (Or.inr (by simp)) le_rfl
          (hgl_addF hGl (by simp))
        intro s hpa
        exact evI_add (evI_lv (hpa.2 _ _ e_al)) (evI_mul (evI_lv (hpa.2 _ _ e_i)) (evI_cw s 52))
      have h2 : HN (PA E (En.set (nm "i") (.val (.word x))) (addF S [Fct.bufok0 (ak + x * BitVec.ofNat 64 52) 52]))
          (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1]))
          (PA E (En.set (nm "i") (.val (.word (x + BitVec.ofNat 64 1)))) (addF S [Fct.bufok0 (ak + x * BitVec.ofNat 64 52) 52])) := by
        refine hn_post (hassignS (w' := x + BitVec.ofNat 64 1) ?_) (fun t _ h => by rwa [env_set_set] at h)
        intro s hpa v hv
        exact evI_add (evI_lv (hpa.2 _ _ e_i)) (evI_cw s 1) v hv
      refine hn_post (hn_seq h1 h2) ?_
      intro t _ h
      exact pa_mono h (fun x v h => h) (fun f hf => Or.inl hf)

end InitECandidate.Solver.MemSafe.Ptx
