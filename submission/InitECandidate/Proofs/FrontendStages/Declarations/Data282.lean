import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify266
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body282_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "cbuf"), none)) "alloc"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "nlen") (Flapjack.Exp.const 1#64),
        Flapjack.Exp.const 2#64]]

def body282_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "isl" (Flapjack.Exp.const 1#64)

def body282_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body282_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 1#64)) body282_1 body282_2

def body282_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "clen"), none)) "nibble_list_to_compact"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "nlen", Flapjack.Exp.var Flapjack.VarKind.local "isl",
    Flapjack.Exp.var Flapjack.VarKind.local "cbuf"]

def body282_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "payload" (Flapjack.Exp.var Flapjack.VarKind.local "el")

def body282_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "payload"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "payload", Flapjack.Exp.var Flapjack.VarKind.local "vl"])

def body282_7 : Prog (BitVec 64) :=
.decCall ("vl") (Flapjack.Shape.one) ("rlp_value_encoded_len") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 48#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 56#64])]) body282_6

def body282_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 1#64)) body282_7 body282_2

def body282_9 : Prog (BitVec 64) :=
.seq body282_5 body282_8

def body282_10 : Prog (BitVec 64) :=
.decCall ("el") (Flapjack.Shape.one) ("rlp_bytes_encoded_len") ([Flapjack.Exp.loadByte (Flapjack.Exp.var Flapjack.VarKind.local "cbuf"), Flapjack.Exp.var Flapjack.VarKind.local "clen"]) body282_9

def body282_11 : Prog (BitVec 64) :=
.seq body282_4 body282_10

def body282_12 : Prog (BitVec 64) :=
.seq body282_3 body282_11

def body282_13 : Prog (BitVec 64) :=
.dec ("isl") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body282_12

def body282_14 : Prog (BitVec 64) :=
.seq body282_0 body282_13

def body282_15 : Prog (BitVec 64) :=
.dec ("nlen") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 40#64])) body282_14

def body282_16 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 3#64)) body282_15 body282_2

def body282_17 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "fr", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "cbuf")

def body282_18 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "fr", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "clen")

def body282_19 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "fr", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "payload")

def body282_20 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body282_21 : Prog (BitVec 64) :=
.seq body282_19 body282_20

def body282_22 : Prog (BitVec 64) :=
.seq body282_18 body282_21

def body282_23 : Prog (BitVec 64) :=
.seq body282_17 body282_22

def body282_24 : Prog (BitVec 64) :=
.seq body282_16 body282_23

def body282_25 : Prog (BitVec 64) :=
.dec ("clen") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body282_24

def body282_26 : Prog (BitVec 64) :=
.dec ("cbuf") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body282_25

def body282_27 : Prog (BitVec 64) :=
.dec ("payload") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body282_26

def body282_28 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 0#64])) body282_27

def body282_29 : Prog (BitVec 64) :=
.seq body282_3 body282_4

def body282_30 : Prog (BitVec 64) :=
.seq body282_29 body282_10

def body282_31 : Prog (BitVec 64) :=
.dec ("isl") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body282_30

def body282_32 : Prog (BitVec 64) :=
.seq body282_0 body282_31

def body282_33 : Prog (BitVec 64) :=
.dec ("nlen") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 40#64])) body282_32

def body282_34 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 3#64)) body282_33 body282_2

def body282_35 : Prog (BitVec 64) :=
.seq body282_34 body282_17

def body282_36 : Prog (BitVec 64) :=
.seq body282_35 body282_18

def body282_37 : Prog (BitVec 64) :=
.seq body282_36 body282_19

def body282_38 : Prog (BitVec 64) :=
.seq body282_37 body282_20

def body282_39 : Prog (BitVec 64) :=
.dec ("clen") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body282_38

def body282_40 : Prog (BitVec 64) :=
.dec ("cbuf") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body282_39

def body282_41 : Prog (BitVec 64) :=
.dec ("payload") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body282_40

def body282_42 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 0#64])) body282_41

def originalData282 : Decl (BitVec 64) :=
.function { name := "_node_rlp_begin", inline := false, exported := false, params := [("fr", Flapjack.Shape.one), ("node", Flapjack.Shape.one)], body := body282_28, returnShape := (Flapjack.Shape.one) }
def simplifiedData282 : Decl (BitVec 64) :=
.function { name := "_node_rlp_begin", inline := false, exported := false, params := [("fr", Flapjack.Shape.one), ("node", Flapjack.Shape.one)], body := body282_42, returnShape := (Flapjack.Shape.one) }
def original282 := Pancake.PanLang.declToHOL originalData282
def simplified282 := Pancake.PanLang.declToHOL simplifiedData282
end InitECandidate.Proofs.FrontendStages.Declarations
