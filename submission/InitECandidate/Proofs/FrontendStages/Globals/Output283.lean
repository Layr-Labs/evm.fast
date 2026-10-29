import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data283
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate267
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody283_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "payload"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "payload", Flapjack.Exp.var Flapjack.VarKind.local "rl"])

def globalBody283_1 : Prog (BitVec 64) :=
.decCall ("rl") (Flapjack.Shape.one) ("node_ref_len") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 48#64])]) globalBody283_0

def globalBody283_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody283_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 2#64)) globalBody283_1 globalBody283_2

def globalBody283_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "payload"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "payload", Flapjack.Exp.var Flapjack.VarKind.local "rl2"])

def globalBody283_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody283_6 : Prog (BitVec 64) :=
.seq globalBody283_4 globalBody283_5

def globalBody283_7 : Prog (BitVec 64) :=
.decCall ("rl2") (Flapjack.Shape.one) ("node_ref_len") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 32#64,
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])]) globalBody283_6

def globalBody283_8 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 16#64)) globalBody283_7

def globalBody283_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "payload"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "payload", Flapjack.Exp.var Flapjack.VarKind.local "vl2"])

def globalBody283_10 : Prog (BitVec 64) :=
.decCall ("vl2") (Flapjack.Shape.one) ("rlp_value_encoded_len") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 160#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 168#64])]) globalBody283_9

def globalBody283_11 : Prog (BitVec 64) :=
.seq globalBody283_8 globalBody283_10

def globalBody283_12 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody283_11

def globalBody283_13 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 3#64)) globalBody283_12 globalBody283_2

def globalBody283_14 : Prog (BitVec 64) :=
.seq globalBody283_3 globalBody283_13

def globalBody283_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_encode_list_header"
  [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.var Flapjack.VarKind.local "payload"]

def globalBody283_16 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "off"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "off", Flapjack.Exp.var Flapjack.VarKind.local "w"])

def globalBody283_17 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "off"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "off", Flapjack.Exp.var Flapjack.VarKind.local "w2"])

def globalBody283_18 : Prog (BitVec 64) :=
.decCall ("w2") (Flapjack.Shape.one) ("rlp_encode_bytes") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.var Flapjack.VarKind.local "off"],
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 48#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 56#64])]) globalBody283_17

def globalBody283_19 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "off"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "off", Flapjack.Exp.var Flapjack.VarKind.local "w3"])

def globalBody283_20 : Prog (BitVec 64) :=
.decCall ("w3") (Flapjack.Shape.one) ("node_write_ref") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 48#64]),
  Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.var Flapjack.VarKind.local "off"]]) globalBody283_19

def globalBody283_21 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 1#64)) globalBody283_18 globalBody283_20

def globalBody283_22 : Prog (BitVec 64) :=
.seq globalBody283_16 globalBody283_21

def globalBody283_23 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("rlp_encode_bytes") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.var Flapjack.VarKind.local "off"],
  Flapjack.Exp.var Flapjack.VarKind.local "cbuf", Flapjack.Exp.var Flapjack.VarKind.local "clen"]) globalBody283_22

def globalBody283_24 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "off"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "off", Flapjack.Exp.var Flapjack.VarKind.local "w4"])

def globalBody283_25 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def globalBody283_26 : Prog (BitVec 64) :=
.seq globalBody283_24 globalBody283_25

def globalBody283_27 : Prog (BitVec 64) :=
.decCall ("w4") (Flapjack.Shape.one) ("node_write_ref") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 32#64,
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 8#64]]),
  Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.var Flapjack.VarKind.local "off"]]) globalBody283_26

def globalBody283_28 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 16#64)) globalBody283_27

def globalBody283_29 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "off"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "off", Flapjack.Exp.var Flapjack.VarKind.local "w5"])

def globalBody283_30 : Prog (BitVec 64) :=
.decCall ("w5") (Flapjack.Shape.one) ("rlp_encode_bytes") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.var Flapjack.VarKind.local "off"],
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 160#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 168#64])]) globalBody283_29

def globalBody283_31 : Prog (BitVec 64) :=
.seq globalBody283_28 globalBody283_30

def globalBody283_32 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody283_31

def globalBody283_33 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 3#64)) globalBody283_23 globalBody283_32

def globalBody283_34 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "buf")

def globalBody283_35 : Prog (BitVec 64) :=
.seq globalBody283_33 globalBody283_34

def globalBody283_36 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "off")

def globalBody283_37 : Prog (BitVec 64) :=
.seq globalBody283_35 globalBody283_36

def globalBody283_38 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody283_39 : Prog (BitVec 64) :=
.seq globalBody283_37 globalBody283_38

def globalBody283_40 : Prog (BitVec 64) :=
.dec ("off") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "hl") globalBody283_39

def globalBody283_41 : Prog (BitVec 64) :=
.seq globalBody283_15 globalBody283_40

def globalBody283_42 : Prog (BitVec 64) :=
.decCall ("buf") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "hl", Flapjack.Exp.var Flapjack.VarKind.local "payload"]]) globalBody283_41

def globalBody283_43 : Prog (BitVec 64) :=
.decCall ("hl") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.var Flapjack.VarKind.local "payload"]) globalBody283_42

def globalBody283_44 : Prog (BitVec 64) :=
.seq globalBody283_14 globalBody283_43

def globalBody283_45 : Prog (BitVec 64) :=
.dec ("clen") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "fr", Flapjack.Exp.const 32#64])) globalBody283_44

def globalBody283_46 : Prog (BitVec 64) :=
.dec ("cbuf") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "fr", Flapjack.Exp.const 24#64])) globalBody283_45

def globalBody283_47 : Prog (BitVec 64) :=
.dec ("payload") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "fr", Flapjack.Exp.const 40#64])) globalBody283_46

def globalBody283_48 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 0#64])) globalBody283_47

def globalData283 : Decl (BitVec 64) :=
.function { name := "_node_rlp_finish", inline := false, exported := false, params := [("fr", Flapjack.Shape.one), ("node", Flapjack.Shape.one)], body := globalBody283_48, returnShape := (Flapjack.Shape.one) }
def globalOutput283 := Pancake.PanLang.declToHOL globalData283
end InitECandidate.Proofs.FrontendStages.Declarations
