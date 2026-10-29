import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify891
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body907_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body907_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body907_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "k")
  (Flapjack.Exp.var Flapjack.VarKind.local "nvh")) body907_0 body907_1

def body907_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) body907_0 body907_1

def body907_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "k"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 1#64])

def body907_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def body907_6 : Prog (BitVec 64) :=
.seq body907_4 body907_5

def body907_7 : Prog (BitVec 64) :=
.seq body907_3 body907_6

def body907_8 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 256#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 32#64]],
  Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "vh",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 32#64]],
  Flapjack.Exp.const 32#64]) body907_7

def body907_9 : Prog (BitVec 64) :=
.seq body907_2 body907_8

def body907_10 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.var Flapjack.VarKind.local "nb")) body907_9

def body907_11 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body907_10

def body907_12 : Prog (BitVec 64) :=
.dec ("nb") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 264#64])) body907_11

def body907_13 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "isb") (Flapjack.Exp.const 0#64)) body907_12 body907_1

def body907_14 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body907_15 : Prog (BitVec 64) :=
.seq body907_13 body907_14

def body907_16 : Prog (BitVec 64) :=
.decCall ("isb") (Flapjack.Shape.one) ("tx_is_blob") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) body907_15

def body907_17 : Prog (BitVec 64) :=
.decCall ("tx") (Flapjack.Shape.one) ("decode_transaction") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "txs",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64]]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "txs",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64],
        Flapjack.Exp.const 8#64])]) body907_16

def body907_18 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "ntx")) body907_17

def body907_19 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "k")
  (Flapjack.Exp.var Flapjack.VarKind.local "nvh")) body907_0 body907_1

def body907_20 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body907_21 : Prog (BitVec 64) :=
.seq body907_19 body907_20

def body907_22 : Prog (BitVec 64) :=
.seq body907_18 body907_21

def body907_23 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body907_22

def body907_24 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body907_23

def body907_25 : Prog (BitVec 64) :=
.dec ("nvh") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 16#64])) body907_24

def body907_26 : Prog (BitVec 64) :=
.dec ("vh") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 8#64])) body907_25

def body907_27 : Prog (BitVec 64) :=
.dec ("ntx") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 40#64])) body907_26

def body907_28 : Prog (BitVec 64) :=
.dec ("txs") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 32#64])) body907_27

def body907_29 : Prog (BitVec 64) :=
.dec ("pl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 0#64])) body907_28

def body907_30 : Prog (BitVec 64) :=
.seq body907_3 body907_4

def body907_31 : Prog (BitVec 64) :=
.seq body907_30 body907_5

def body907_32 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 256#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 32#64]],
  Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "vh",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 32#64]],
  Flapjack.Exp.const 32#64]) body907_31

def body907_33 : Prog (BitVec 64) :=
.seq body907_2 body907_32

def body907_34 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.var Flapjack.VarKind.local "nb")) body907_33

def body907_35 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body907_34

def body907_36 : Prog (BitVec 64) :=
.dec ("nb") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 264#64])) body907_35

def body907_37 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "isb") (Flapjack.Exp.const 0#64)) body907_36 body907_1

def body907_38 : Prog (BitVec 64) :=
.seq body907_37 body907_14

def body907_39 : Prog (BitVec 64) :=
.decCall ("isb") (Flapjack.Shape.one) ("tx_is_blob") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) body907_38

def body907_40 : Prog (BitVec 64) :=
.decCall ("tx") (Flapjack.Shape.one) ("decode_transaction") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "txs",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64]]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "txs",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64],
        Flapjack.Exp.const 8#64])]) body907_39

def body907_41 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "ntx")) body907_40

def body907_42 : Prog (BitVec 64) :=
.seq body907_41 body907_19

def body907_43 : Prog (BitVec 64) :=
.seq body907_42 body907_20

def body907_44 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body907_43

def body907_45 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body907_44

def body907_46 : Prog (BitVec 64) :=
.dec ("nvh") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 16#64])) body907_45

def body907_47 : Prog (BitVec 64) :=
.dec ("vh") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 8#64])) body907_46

def body907_48 : Prog (BitVec 64) :=
.dec ("ntx") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 40#64])) body907_47

def body907_49 : Prog (BitVec 64) :=
.dec ("txs") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 32#64])) body907_48

def body907_50 : Prog (BitVec 64) :=
.dec ("pl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 0#64])) body907_49

def originalData907 : Decl (BitVec 64) :=
.function { name := "is_valid_versioned_hashes", inline := false, exported := false, params := [("si", Flapjack.Shape.one)], body := body907_29, returnShape := (Flapjack.Shape.one) }
def simplifiedData907 : Decl (BitVec 64) :=
.function { name := "is_valid_versioned_hashes", inline := false, exported := false, params := [("si", Flapjack.Shape.one)], body := body907_50, returnShape := (Flapjack.Shape.one) }
def original907 := Pancake.PanLang.declToHOL originalData907
def simplified907 := Pancake.PanLang.declToHOL simplifiedData907
end InitECandidate.Proofs.FrontendStages.Declarations
