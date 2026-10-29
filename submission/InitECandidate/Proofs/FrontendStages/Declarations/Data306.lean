import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify290
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body306_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.const 20#64)

def body306_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body306_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "it"))
  (Flapjack.Exp.const 1#64)) body306_0 body306_1

def body306_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "ent"))
  (Flapjack.Exp.const 6#64)) body306_0 body306_1

def body306_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "cid")

def body306_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "addr")

def body306_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "w")

def body306_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "tx_scalar_word"
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "ent"), Flapjack.Exp.const 3#64,
    Flapjack.Exp.const 1#64, Flapjack.Exp.const 12#64]

def body306_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "w")

def body306_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "r")

def body306_10 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 88#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "s")

def body306_11 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body306_12 : Prog (BitVec 64) :=
.seq body306_10 body306_11

def body306_13 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("tx_scalar_u256") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "ent"), Flapjack.Exp.const 5#64,
  Flapjack.Exp.const 32#64]) body306_12

def body306_14 : Prog (BitVec 64) :=
.seq body306_9 body306_13

def body306_15 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("tx_scalar_u256") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "ent"), Flapjack.Exp.const 4#64,
  Flapjack.Exp.const 32#64]) body306_14

def body306_16 : Prog (BitVec 64) :=
.seq body306_8 body306_15

def body306_17 : Prog (BitVec 64) :=
.seq body306_7 body306_16

def body306_18 : Prog (BitVec 64) :=
.seq body306_6 body306_17

def body306_19 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("tx_scalar_word") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "ent"), Flapjack.Exp.const 2#64,
  Flapjack.Exp.const 8#64, Flapjack.Exp.const 12#64]) body306_18

def body306_20 : Prog (BitVec 64) :=
.seq body306_5 body306_19

def body306_21 : Prog (BitVec 64) :=
.decCall ("addr") (Flapjack.Shape.one) ("tx_fixed_bytes") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "ent"), Flapjack.Exp.const 1#64,
  Flapjack.Exp.const 20#64]) body306_20

def body306_22 : Prog (BitVec 64) :=
.seq body306_4 body306_21

def body306_23 : Prog (BitVec 64) :=
.decCall ("cid") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("tx_scalar_u256") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "ent"), Flapjack.Exp.const 0#64,
  Flapjack.Exp.const 32#64]) body306_22

def body306_24 : Prog (BitVec 64) :=
.dec ("a") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "recs",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 120#64]]) body306_23

def body306_25 : Prog (BitVec 64) :=
.seq body306_3 body306_24

def body306_26 : Prog (BitVec 64) :=
.decCall ("ent") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_list_to_slices") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "it"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "it")]) body306_25

def body306_27 : Prog (BitVec 64) :=
.seq body306_2 body306_26

def body306_28 : Prog (BitVec 64) :=
.decCall ("it") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_item") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "lst"),
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64]]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "lst"),
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64],
        Flapjack.Exp.const 8#64])]) body306_27

def body306_29 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "lst"))) body306_28

def body306_30 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.var Flapjack.VarKind.local "recs",
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "lst")])

def body306_31 : Prog (BitVec 64) :=
.seq body306_29 body306_30

def body306_32 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body306_31

def body306_33 : Prog (BitVec 64) :=
.decCall ("recs") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "lst"), Flapjack.Exp.const 120#64]]) body306_32

def body306_34 : Prog (BitVec 64) :=
.decCall ("lst") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_list_to_slices") ([Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "len"]) body306_33

def body306_35 : Prog (BitVec 64) :=
.seq body306_6 body306_7

def body306_36 : Prog (BitVec 64) :=
.seq body306_35 body306_8

def body306_37 : Prog (BitVec 64) :=
.seq body306_36 body306_15

def body306_38 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("tx_scalar_word") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "ent"), Flapjack.Exp.const 2#64,
  Flapjack.Exp.const 8#64, Flapjack.Exp.const 12#64]) body306_37

def body306_39 : Prog (BitVec 64) :=
.seq body306_5 body306_38

def body306_40 : Prog (BitVec 64) :=
.decCall ("addr") (Flapjack.Shape.one) ("tx_fixed_bytes") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "ent"), Flapjack.Exp.const 1#64,
  Flapjack.Exp.const 20#64]) body306_39

def body306_41 : Prog (BitVec 64) :=
.seq body306_4 body306_40

def body306_42 : Prog (BitVec 64) :=
.decCall ("cid") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("tx_scalar_u256") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "ent"), Flapjack.Exp.const 0#64,
  Flapjack.Exp.const 32#64]) body306_41

def body306_43 : Prog (BitVec 64) :=
.dec ("a") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "recs",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 120#64]]) body306_42

def body306_44 : Prog (BitVec 64) :=
.seq body306_3 body306_43

def body306_45 : Prog (BitVec 64) :=
.decCall ("ent") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_list_to_slices") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "it"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "it")]) body306_44

def body306_46 : Prog (BitVec 64) :=
.seq body306_2 body306_45

def body306_47 : Prog (BitVec 64) :=
.decCall ("it") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_item") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "lst"),
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64]]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "lst"),
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64],
        Flapjack.Exp.const 8#64])]) body306_46

def body306_48 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "lst"))) body306_47

def body306_49 : Prog (BitVec 64) :=
.seq body306_48 body306_30

def body306_50 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body306_49

def body306_51 : Prog (BitVec 64) :=
.decCall ("recs") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "lst"), Flapjack.Exp.const 120#64]]) body306_50

def body306_52 : Prog (BitVec 64) :=
.decCall ("lst") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_list_to_slices") ([Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "len"]) body306_51

def originalData306 : Decl (BitVec 64) :=
.function { name := "decode_authorizations", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("len", Flapjack.Shape.one)], body := body306_34, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData306 : Decl (BitVec 64) :=
.function { name := "decode_authorizations", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("len", Flapjack.Shape.one)], body := body306_52, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def original306 := Pancake.PanLang.declToHOL originalData306
def simplified306 := Pancake.PanLang.declToHOL simplifiedData306
end InitECandidate.Proofs.FrontendStages.Declarations
