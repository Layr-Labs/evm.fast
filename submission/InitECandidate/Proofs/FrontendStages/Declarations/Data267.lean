import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify251
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body267_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_fail" [Flapjack.Exp.const 2#64]

def body267_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body267_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 0#64)) body267_0 body267_1

def body267_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 1#64,
      Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 48#64]),
      Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 56#64])])

def body267_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) body267_3 body267_1

def body267_5 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 32#64]),
  Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nibs", Flapjack.Exp.var Flapjack.VarKind.local "pos"],
  Flapjack.Exp.var Flapjack.VarKind.local "rl"]) body267_4

def body267_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "rl")
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "nlen", Flapjack.Exp.var Flapjack.VarKind.local "pos"])) body267_5 body267_1

def body267_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rStruct [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def body267_8 : Prog (BitVec 64) :=
.seq body267_6 body267_7

def body267_9 : Prog (BitVec 64) :=
.dec ("rl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 40#64])) body267_8

def body267_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 1#64)) body267_9 body267_1

def body267_11 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "nlen", Flapjack.Exp.var Flapjack.VarKind.local "pos"])
  (Flapjack.Exp.var Flapjack.VarKind.local "sl")) body267_7 body267_1

def body267_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq2") (Flapjack.Exp.const 0#64)) body267_7 body267_1

def body267_13 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pos"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "pos", Flapjack.Exp.var Flapjack.VarKind.local "sl"])

def body267_14 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "node"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 48#64]))

def body267_15 : Prog (BitVec 64) :=
.seq body267_13 body267_14

def body267_16 : Prog (BitVec 64) :=
.seq body267_12 body267_15

def body267_17 : Prog (BitVec 64) :=
.decCall ("eq2") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 32#64]),
  Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nibs", Flapjack.Exp.var Flapjack.VarKind.local "pos"],
  Flapjack.Exp.var Flapjack.VarKind.local "sl"]) body267_16

def body267_18 : Prog (BitVec 64) :=
.seq body267_11 body267_17

def body267_19 : Prog (BitVec 64) :=
.dec ("sl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 40#64])) body267_18

def body267_20 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "vl") (Flapjack.Exp.const 0#64)) body267_7 body267_1

def body267_21 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 1#64,
      Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 160#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "vl"])

def body267_22 : Prog (BitVec 64) :=
.seq body267_20 body267_21

def body267_23 : Prog (BitVec 64) :=
.dec ("vl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 168#64])) body267_22

def body267_24 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "pos")
  (Flapjack.Exp.var Flapjack.VarKind.local "nlen")) body267_23 body267_1

def body267_25 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "node"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 32#64,
        Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.loadByte
              (Flapjack.Exp.op Flapjack.BinOp.add
                [Flapjack.Exp.var Flapjack.VarKind.local "nibs", Flapjack.Exp.var Flapjack.VarKind.local "pos"]),
            Flapjack.Exp.const 8#64]]))

def body267_26 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pos"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pos", Flapjack.Exp.const 1#64])

def body267_27 : Prog (BitVec 64) :=
.seq body267_25 body267_26

def body267_28 : Prog (BitVec 64) :=
.seq body267_24 body267_27

def body267_29 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 2#64)) body267_19 body267_28

def body267_30 : Prog (BitVec 64) :=
.seq body267_10 body267_29

def body267_31 : Prog (BitVec 64) :=
.seq body267_2 body267_30

def body267_32 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 0#64])) body267_31

def body267_33 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "node") (Flapjack.Exp.const 0#64)) body267_32

def body267_34 : Prog (BitVec 64) :=
.seq body267_33 body267_7

def body267_35 : Prog (BitVec 64) :=
.dec ("pos") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body267_34

def body267_36 : Prog (BitVec 64) :=
.seq body267_2 body267_10

def body267_37 : Prog (BitVec 64) :=
.seq body267_12 body267_13

def body267_38 : Prog (BitVec 64) :=
.seq body267_37 body267_14

def body267_39 : Prog (BitVec 64) :=
.decCall ("eq2") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 32#64]),
  Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nibs", Flapjack.Exp.var Flapjack.VarKind.local "pos"],
  Flapjack.Exp.var Flapjack.VarKind.local "sl"]) body267_38

def body267_40 : Prog (BitVec 64) :=
.seq body267_11 body267_39

def body267_41 : Prog (BitVec 64) :=
.dec ("sl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 40#64])) body267_40

def body267_42 : Prog (BitVec 64) :=
.seq body267_24 body267_25

def body267_43 : Prog (BitVec 64) :=
.seq body267_42 body267_26

def body267_44 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 2#64)) body267_41 body267_43

def body267_45 : Prog (BitVec 64) :=
.seq body267_36 body267_44

def body267_46 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 0#64])) body267_45

def body267_47 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "node") (Flapjack.Exp.const 0#64)) body267_46

def body267_48 : Prog (BitVec 64) :=
.seq body267_47 body267_7

def body267_49 : Prog (BitVec 64) :=
.dec ("pos") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body267_48

def originalData267 : Decl (BitVec 64) :=
.function { name := "trie_walk", inline := false, exported := false, params := [("node", Flapjack.Shape.one), ("nibs", Flapjack.Shape.one), ("nlen", Flapjack.Shape.one)], body := body267_35, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData267 : Decl (BitVec 64) :=
.function { name := "trie_walk", inline := false, exported := false, params := [("node", Flapjack.Shape.one), ("nibs", Flapjack.Shape.one), ("nlen", Flapjack.Shape.one)], body := body267_49, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def original267 := Pancake.PanLang.declToHOL originalData267
def simplified267 := Pancake.PanLang.declToHOL simplifiedData267
end InitECandidate.Proofs.FrontendStages.Declarations
